#version 150

#moj_import <tools.glsl>

uniform sampler2D Sampler0;
uniform mat3 IViewRotMat;

in vec3 pos;
in vec2 texCoord0;
in vec4 vertexColor;
flat in int endSky;

out vec4 fragColor;

void main() {
    vec2 uv = texCoord0;
    vec4 vc = vertexColor;
    vec3 dpos = normalize(cross(dFdx(pos), dFdy(pos))) * -1.0;
    if (endSky == 1) {
        if (dpos.z > 0.9) { //+z
            uv.x = (uv.x+2)/3;
            uv.y = (-uv.y+1)/2;
        }
        else if (dpos.z < -0.9) {//-z
            uv.x = (-uv.x+3)/3;
            uv.y = (uv.y+1)/2;
        }
        else if (dpos.x > 0.9) {//+x
            uv = rotate(uv, PI/2);
            uv.x = (-uv.x)/3;
            uv.y = (uv.y)/2;
        }
        else if (dpos.x < -0.9) {//-x
            uv = rotate(uv, PI/2);
            uv.x = (uv.x+1)/3;
            uv.y = (-uv.y+2)/2;
        }
        else if (dpos.y > 0.9) {//+y
            uv.x = (uv.x+1)/3;
            uv.y = (-uv.y+1)/2;
        }
        else if (dpos.y < -0.9) {//-y
            uv.x = (uv.x+1)/3;
            uv.y = (-uv.y+2)/2;
        }
        vc = vec4(1);
    }

    vec4 color = texture(Sampler0, uv) * vc;
    if (color.a < 0.01) {
        discard;
    }
    fragColor = color;
}
