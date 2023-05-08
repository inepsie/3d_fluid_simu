#version 450

uniform sampler3D tex;
uniform float nl;
uniform mat4 MVP;

in vec3 tex_coord;
in vec4 o_color;

out vec4 fragColor;



void main(void) {
 //fragColor = texture(tex, tex_coord);
 //fragColor.x = pow(fragColor.x, nl);
 //fragColor.y = pow(fragColor.y, nl);
 //fragColor.z = pow(fragColor.z, nl);
 //fragColor = vec4(1.0, 1.0, 1.0, 0.002);
 fragColor = texture(tex, tex_coord);
 //fragColor.a *= 0.2;
 //fragColor.a = pow(fragColor.a, nl);
 //fragColor = o_color;
 //fragColor = vec4(o_color.x, o_color.y, o_color.z, 0.008);
}
