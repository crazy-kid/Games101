#include <chrono>
#include <iostream>
#include <opencv2/opencv.hpp>

const int control_point_num = 6;
std::vector<cv::Point2f> control_points;

void mouse_handler(int event, int x, int y, int flags, void* userdata)
{
    if (event == cv::EVENT_LBUTTONDOWN && control_points.size() < control_point_num)
    {
        std::cout << "Left button of the mouse is clicked - position (" << x << ", "
            << y << ")" << '\n';
        control_points.emplace_back(x, y);
    }
}

void naive_bezier(const std::vector<cv::Point2f>& points, cv::Mat& window)
{
    auto& p_0 = points[0];
    auto& p_1 = points[1];
    auto& p_2 = points[2];
    auto& p_3 = points[3];

    for (double t = 0.0; t <= 1.0; t += 0.001)
    {
        auto point = std::pow(1 - t, 3) * p_0 + 3 * t * std::pow(1 - t, 2) * p_1 +
            3 * std::pow(t, 2) * (1 - t) * p_2 + std::pow(t, 3) * p_3;

        window.at<cv::Vec3b>(point.y, point.x)[2] = 255;
    }
}

cv::Point2f recursive_bezier(const std::vector<cv::Point2f>& control_points, float t)
{
    // TODO: Implement de Casteljau's algorithm
    // end recursive
    if (control_points.size() == 1) return control_points[0];

    int next_size = control_points.size() - 1;
    std::vector<cv::Point2f> next_control_points(next_size);
    for (int i = 0;i < next_size;i++) {//此处循环边界要注意
        next_control_points[i] = t * control_points[i] + (1 - t) * control_points[i + 1];
    }
    return recursive_bezier(next_control_points, t);

}

void bezier(const std::vector<cv::Point2f>& control_points, cv::Mat& window)
{
    // TODO: Iterate through all t = 0 to t = 1 with small steps, and call de Casteljau's 
    // recursive Bezier algorithm.
    float delta = 1e-4;
    for (float t = 0;t <= 1.0;t += delta) {
        cv::Point2d point = recursive_bezier(control_points, t);
        window.at<cv::Vec3b>(point.y, point.x)[1] = 255;
    }
}

float b_i_k(const int i, const int k, const float u, const std::vector<float>& nodes)
{
    if (u <= nodes[i] || u >= nodes[i + k]) return 0.0;
    if (k == 1) return 1.0;
    float c1 = (u - nodes[i]) / (nodes[i + k - 1] - nodes[i]);
    float c2 = (nodes[i + k] - u) / (nodes[i + k] - nodes[i + 1]);
    return c1 * b_i_k(i, k - 1, u, nodes) + c2 * b_i_k(i + 1, k - 1, u, nodes);
}

cv::Point2f recursive_b_spline(const std::vector<cv::Point2f>& control_points, float u, int n, int k, const std::vector<float>& nodes)
{
    cv::Point2f ret = { 0,0 };
    for (int i = 0;i <= n;i++) {
        float b = b_i_k(i, k, u, nodes);
        ret = ret + b * control_points[i];
        std::cout << b << " ";
    }
    return ret;
}

void b_spline(const std::vector<cv::Point2f>& control_points, cv::Mat& window)
{
    int k = 3;
    int n = control_points.size() - 1;
    float delta = 1e-4;
    std::vector<float> nodes(n + k + 1);
    float gap = 1.0 / (k + n);
    nodes[0] = 0;
    for (int i = 1;i < nodes.size();i++)
        nodes[i] = nodes[i - 1] + gap;

    std::cout << "nodes: ";
    for (float f : nodes) std::cout << f << " ";
    std::cout << std::endl;

    for (float u = nodes[k - 1];u <= nodes[n + 1];u += delta) {
        cv::Point2d point = recursive_b_spline(control_points, u, n, k, nodes);
        std::cout << std::endl;
        window.at<cv::Vec3b>(point.y, point.x)[1] = 255;
    }
}

int main()
{
    cv::Mat window = cv::Mat(700, 700, CV_8UC3, cv::Scalar(0));
    cv::cvtColor(window, window, cv::COLOR_BGR2RGB);
    cv::namedWindow("Bezier Curve", cv::WINDOW_AUTOSIZE);

    cv::setMouseCallback("Bezier Curve", mouse_handler, nullptr);

    int key = -1;
    while (key != 27)
    {
        for (auto& point : control_points)
        {
            cv::circle(window, point, 3, { 255, 255, 255 }, 3);
        }

        if (control_points.size() == control_point_num)
        {
            // naive_bezier(control_points, window);
            // bezier(control_points, window);
            b_spline(control_points, window);

            cv::imshow("Bezier Curve", window);
            cv::imwrite("../result/my_b_spline_curve.png", window);
            key = cv::waitKey(0);

            return 0;
        }

        cv::imshow("Bezier Curve", window);
        key = cv::waitKey(20);
    }

    return 0;
}
