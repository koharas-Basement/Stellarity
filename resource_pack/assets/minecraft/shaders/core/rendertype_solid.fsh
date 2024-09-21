#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform float GameTime;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec4 normal;
in vec3 screenLocation;

out vec4 fragColor;

// Hash without Sine
// MIT License...
/* Copyright (c)2014 David Hoskins.

// ALL HASHES ARE in the 'COMMON' tab

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*/

// https://www.shadertoy.com/view/4djSRW
// Trying to find a Hash function that is the same on all systems
// and doesn't rely on trigonometry functions that lose accuracy with high values. 
// New one on the left, sine function on the right.

// *NB: This is for integer scaled floats only! i.e. Standard noise functions.

float hash12(vec2 p) {
	vec3 p3  = fract(vec3(p.xyx) * .1031);
	p3 += dot(p3, p3.yzx + 33.33);
	return fract((p3.x + p3.y) * p3.z);
}

mat2 mat2_rotate_z(float radians) {
    return mat2(
        cos(radians), -sin(radians),
        sin(radians), cos(radians)
    );
}

const vec3 BACKGROUND_COLOR = vec3(0.022087, 0.098399, 0.110818);
const vec3 LAYER1 = vec3(0.07058823529411765, 0.45098039215686275, 0.3058823529411765);
const vec3 LAYER2 = vec3(0.204675, 0.39001, 0.302066);
const vec3 LAYER3 = vec3(0.047281, 0.315338, 0.32197);
const vec3 LAYER4 = vec3(0.196766, 0.142899, 0.214696);
const vec3 LAYER5 = vec3(0.070006, 0.243332, 0.235792);
const vec3 LAYER6 = vec3(0.133516, 0.138278, 0.148582);
const vec3 LAYER7 = vec3(0.097721, 0.110188, 0.187229);

const vec3[] COLORS = vec3[](
    vec3(0.022087, 0.098399, 0.110818),
    vec3(0.011892, 0.095924, 0.089485),
    vec3(0.027636, 0.101689, 0.100326),
    vec3(0.046564, 0.109883, 0.114838),
    vec3(0.064901, 0.117696, 0.097189),
    vec3(0.063761, 0.086895, 0.123646),
    vec3(0.084817, 0.111994, 0.166380),
    vec3(0.097489, 0.154120, 0.091064),
    vec3(0.106152, 0.131144, 0.195191),
    LAYER7,
    LAYER6,
    LAYER5,
    LAYER4,
    LAYER3, 
    LAYER2,
    LAYER1
);

const mat4 SCALE_TRANSLATE = mat4(
    0.5, 0.0, 0.0, 0.25,
    0.0, 0.5, 0.0, 0.25,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
);

mat4 end_portal_layer(float layer) {
    mat4 translate = mat4(
        1.0, 0.0, 0.0, 17.0 / layer,
        0.0, 1.0, 0.0, (2.0 + layer / 1.5) * (GameTime * 1.5),
        0.0, 0.0, 1.0, 0.0,
        0.0, 0.0, 0.0, 1.0
    );

    mat2 rotate = mat2_rotate_z(radians((layer * layer * 4321.0 + layer * 9.0) * 2.0));

    mat2 scale = mat2((4.5 - layer / 4.0) * 2.0);

    return mat4(scale * rotate) * translate * SCALE_TRANSLATE;
}

void main() {
    vec4 color = texture(Sampler0, texCoord0);
    int id = int(color.a*255);
    if ( id == 151 || id == 150) {
        vec2 screenSize = gl_FragCoord.xy / (screenLocation.xy/screenLocation.z*0.5+0.5);
        color.rgb = COLORS[0] * BACKGROUND_COLOR;
        for (int i = 0; i < 16; i++) {
            vec4 proj = vec4(gl_FragCoord.xy/screenSize, 0, 1) * end_portal_layer(float(i + 1));
            float pixel = hash12(floor(fract(proj.xy/proj.w)*256.0));
            color.rgb += (step(0.95, pixel)* 0.2 + step(0.99, pixel) * 0.8) * (COLORS[i]);
        }
        
        if (id == 150) {
            color *= vertexColor * ColorModulator * 0.7 + 0.3;
        }
    } else {
        color *= vertexColor * ColorModulator;
    }
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
