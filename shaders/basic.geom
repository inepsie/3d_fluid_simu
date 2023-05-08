#version 450

layout(points) in;
               /*
in datapv{
 float z_tex;
}data[];
*/
in float z_tex[];
layout(triangle_strip, max_vertices = 4) out;
uniform mat4 MVP;
out vec3 tex_coord;
out vec4 o_color;

void main(void) {
  gl_Position = MVP * (gl_in[0].gl_Position + vec4(-1.0, -1.0, 0.0, 0.0));
  tex_coord = vec3(0.0, 0.0, z_tex[0]);
  o_color = vec4(0.0, 0.0, z_tex[0], 1.0);
  //gl_Position = MVP * (gl_in[0].gl_Position + vec4(1.0, -1.0, 0.0, 0.0));
  EmitVertex();
  //gl_Position = projMat * (viewMat * /*modelMat * */(gl_in[0].gl_Position + vec4(1.0, 0.0, 0.0, 0.0)));
  gl_Position = MVP * (gl_in[0].gl_Position + vec4(1.0, -1.0, 0.0, 0.0));
  tex_coord = vec3(1.0, 0.0, z_tex[0]);
  o_color = vec4(1.0, 0.0, z_tex[0], 1.0);
  EmitVertex();
  //gl_Position = projMat * (viewMat * /*modelMat * */(gl_in[0].gl_Position + vec4(0.0, 0.0, 1.0, 0.0)));
  gl_Position = MVP * (gl_in[0].gl_Position + vec4(-1.0, 1.0, 0.0, 0.0));
  tex_coord = vec3(0.0, 1.0, z_tex[0]);
  o_color = vec4(0.0, 1.0, z_tex[0], 1.0);
  EmitVertex();
  //gl_Position = projMat * (viewMat * /*modelMat * */(gl_in[0].gl_Position + vec4(1.0, 0.0, 1.0, 0.0)));
  gl_Position = MVP * (gl_in[0].gl_Position + vec4(1.0, 1.0, 0.0, 0.0));
  tex_coord = vec3(1.0, 1.0, z_tex[0]);
  o_color = vec4(1.0, 1.0, z_tex[0], 1.0);
  EmitVertex();
  EndPrimitive();
}
