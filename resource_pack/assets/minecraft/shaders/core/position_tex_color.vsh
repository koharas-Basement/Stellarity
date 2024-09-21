#version 150

#moj_import <tools.glsl>

in vec3 Position;
in vec2 UV0;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform sampler2D Sampler0;

out vec2 texCoord0;
out vec3 pos;
out vec4 vertexColor;
flat out int endSky;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    vertexColor = Color;
    texCoord0 = UV0;

    endSky = 0;
    pos = IViewRotMat * Position;
    vec2 texsize = textureSize(Sampler0, 0);
	float depth = -(ModelViewMat * vec4(1.0)).z;
    if(!isGui(ProjMat) && texsize.x/texsize.y != 1.0 && depth <= 1000) {
        texCoord0 = corners[(gl_VertexID + 2) % 4];
        endSky = 1;
    }
}
