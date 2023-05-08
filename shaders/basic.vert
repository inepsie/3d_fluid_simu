#version 450

layout (location = 0) in vec4 vsiPosition;
layout (location = 1) in float z;

//out vec2 vsoTexCoord;

/*
out datapv{
 float z_tex;
}data;
*/
out float z_tex;

/*
in gl_PerVertex{
 vec4 gl_Position;
 float z_tex;
}data[];
*/

uniform mat4 MVP;

void main(void) {
 gl_Position = vec4(vsiPosition.xyz, 1.0);
 z_tex = z;
}
