#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec3 ourPosition;
uniform float time;
flat in float trianglePhase;
const float frequency = (2.0 * 3.14) / 40;


void main()
{
    float gray = sin(time + trianglePhase * frequency);
    gray = (gray + 1.0) / 2.0;
    FragColor = vec4(gray, gray, gray, 1.0);
}