cmake_minimum_required(VERSION 2.8.11)
PROJECT (Transformation)

FIND_PACKAGE(Eigen3 REQUIRED)

INCLUDE_DIRECTORIES(EIGEN3_INCLUDE_DIR)

ADD_EXECUTABLE (Transformation main.cpp)