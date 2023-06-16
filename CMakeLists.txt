cmake_minimum_required(VERSION 3.0)
cmake_policy(SET CMP0048 NEW)
project(TubeFetchr VERSION 0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(TubeFetchr src/main.cpp icon.rc)
target_include_directories(TubeFetchr PUBLIC ./include)
