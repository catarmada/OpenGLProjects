cmake_minimum_required(VERSION 3.20)
project(OpenGL_Test)

set(CMAKE_CXX_STANDARD 17)

# Include directories
include_directories(
        ${PROJECT_SOURCE_DIR}/include
        ${PROJECT_SOURCE_DIR}/lib/glad/include
        ${PROJECT_SOURCE_DIR}/lib/GLFW/include
        ${PROJECT_SOURCE_DIR}/lib/KHR
        ${PROJECT_SOURCE_DIR}/lib/stb
)

# Link directories
link_directories(
        ${PROJECT_SOURCE_DIR}/lib/GLFW/lib-vc2022
)

# Copy shaders to build directory
file(COPY ${CMAKE_SOURCE_DIR}/shaders
        DESTINATION ${CMAKE_BINARY_DIR})

# Source files
set(SOURCES
        src/main.cpp
        src/glad.c
        src/ShaderClass.cpp
        src/stbdef.cpp
)

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link libraries
target_link_libraries(${PROJECT_NAME} glfw3 opengl32)