//
// Created by Göksu Güvendiren on 2019-05-14.
//

#include "Scene.hpp"


void Scene::buildBVH() {
    printf(" - Generating BVH...\n\n");
    this->bvh = new BVHAccel(objects, 1, BVHAccel::SplitMethod::NAIVE);
}

Intersection Scene::intersect(const Ray& ray) const
{
    return this->bvh->Intersect(ray);
}

// 在场景的所有光源上按面积 uniform 地 sample 一个点，并计算该 sample 的概率密度 pos和pdf是采样的结果
void Scene::sampleLight(Intersection& pos, float& pdf) const
{
    // 计算场景总发光面积
    float emit_area_sum = 0;
    for (uint32_t k = 0; k < objects.size(); ++k) {
        if (objects[k]->hasEmit()) {
            emit_area_sum += objects[k]->getArea();
        }
    }
    float p = get_random_float() * emit_area_sum;
    emit_area_sum = 0;
    for (uint32_t k = 0; k < objects.size(); ++k) {
        if (objects[k]->hasEmit()) {
            emit_area_sum += objects[k]->getArea();
            //采样到当前光源
            if (p <= emit_area_sum) {
                objects[k]->Sample(pos, pdf);
                break;
            }
        }
    }
}

bool Scene::trace(
    const Ray& ray,
    const std::vector<Object*>& objects,
    float& tNear, uint32_t& index, Object** hitObject)
{
    *hitObject = nullptr;
    for (uint32_t k = 0; k < objects.size(); ++k) {
        float tNearK = kInfinity;
        uint32_t indexK;
        Vector2f uvK;
        if (objects[k]->intersect(ray, tNearK, indexK) && tNearK < tNear) {
            *hitObject = objects[k];
            tNear = tNearK;
            index = indexK;
        }
    }


    return (*hitObject != nullptr);
}

// Implementation of Path Tracing
Vector3f Scene::castRay(const Ray& ray, int depth) const
{
    Intersection inter = intersect(ray);
    if (!inter.happened)
        return Vector3f(0.0);
    return shade(inter, -ray.direction);
}


Vector3f Scene::shade(Intersection& inter_obj, Vector3f wo) const
{
    // TO DO Implement Path Tracing Algorithm here
    if (inter_obj.m->hasEmission())
        return inter_obj.m->m_emission;
    static const float DSP = 1e-4;

    Vector3f L_dir;

    Intersection inter_light;
    float pdf;
    sampleLight(inter_light, pdf);
    Ray ray_i(inter_obj.coords, (inter_light.coords - inter_obj.coords).normalized());
    Intersection inter_block = intersect(ray_i);
    if ((inter_block.coords - inter_light.coords).norm() < DSP) {//没有物品遮挡
        Vector3f f_r = inter_obj.m->eval(ray_i.direction, wo, inter_obj.normal);
        float r2 = (inter_light.coords - inter_obj.coords).norm();
        r2 *= r2;
        float cos_theta = std::max(0.f, dotProduct(ray_i.direction, inter_obj.normal));
        float cos_theta_prime = std::max(0.f, dotProduct(-ray_i.direction, inter_light.normal));
        L_dir = inter_light.emit * f_r * cos_theta * cos_theta_prime / r2 / pdf;
    }

    // 间接光照
    Vector3f L_indir;
    if (get_random_float() > RussianRoulette)
        return L_dir;

    const Ray ray_b(inter_obj.coords, inter_obj.m->sample(wo, inter_obj.normal).normalized());
    Intersection inter_q = intersect(ray_b);
    if (!inter_q.happened || inter_q.m->hasEmission())
        return L_dir;
    pdf = inter_obj.m->pdf(wo, ray_b.direction, inter_obj.normal);
    if (pdf < DSP)
        return L_dir;

    Vector3f f_r = inter_obj.m->eval(ray_b.direction, wo, inter_obj.normal);
    float cos_theta = std::max(.0f, dotProduct(ray_b.direction, inter_obj.normal));
    L_indir = shade(inter_q, -ray_b.direction) * f_r * cos_theta / pdf / RussianRoulette;

    return L_dir + L_indir;
}