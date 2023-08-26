#include <cmath>
#include <iostream>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Dense>

int main()
{

    double num = sqrt(2) / 2;
    std::cout << num << std::endl;

    Eigen::Vector3f p(2.0f, 1.0f, 1.0f);
    std::cout << "original point\n";
    std::cout << p << std::endl;

    Eigen::Matrix3f trans;
    trans << num, -num, 1.0, num, num, 2, 0, 0, 1;

    std::cout << "Transform matrix\n";
    std::cout << trans << std::endl;

    std::cout << "After transform\n";
    std::cout << trans * p << std::endl;

    std::cout << "Print trans(0,0)&trans(0,1)\n";
    std::cout << trans(0, 0) << trans(0, 1) << std::endl;
    return 0;
}