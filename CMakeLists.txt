cmake_minimum_required(VERSION 3.0)
cmake_policy(SET CMP0048 NEW)
project(TubeFetchr VERSION 0.1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++2b")
set(CMAKE_CXX_COMPILER "/usr/bin/clang++")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(TubeFetchr src/main.cpp icon.rc)
target_include_directories(TubeFetchr PUBLIC include)
