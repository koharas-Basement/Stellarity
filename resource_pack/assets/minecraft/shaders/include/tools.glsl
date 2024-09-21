const vec2[4] corners = vec2[4](
    vec2(0, 1),
    vec2(0, 0),
    vec2(1, 0),
    vec2(1, 1)
);

bool isGui(mat4 ProjMat) {
    return ProjMat[3][2] == -2.0;
}

#define PI 3.1415926535897932384626433832795
vec2 rotate(vec2 v, float angle) {
    float s = sin(angle);
    float c = cos(angle);
    return vec2(v.x * c - v.y * s, v.x * s + v.y * c);
}