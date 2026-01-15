#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;
out vec3 ourPosition;
flat out float trianglePhase;
uniform float hOffset = 0.0;

void main()
{
    ourPosition = aPos;
    float triangleID = floor(ourPosition.x * 10.0);
    trianglePhase = triangleID;
    gl_Position = vec4(ourPosition, 1.0);
    ourColor = aColor;
}