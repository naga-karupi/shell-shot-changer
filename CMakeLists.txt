cmake_minimum_required(VERSION 3.16)
project(converter)

add_executable(kp src/out_yaml_format.cpp)
add_executable(ki src/out_yaml_format.cpp)

target_compile_definitions(kp PRIVATE KP=1)
target_compile_definitions(ki PRIVATE KI=1)

target_compile_options(kp PRIVATE -O2 -Wall -Wextra)
target_compile_options(ki PRIVATE -O2 -Wall -Wextra)