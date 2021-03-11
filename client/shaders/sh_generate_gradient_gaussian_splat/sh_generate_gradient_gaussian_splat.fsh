varying vec2 coord;

float gaussian(vec2 pos, float radius) {
    return exp(-dot(pos, pos) / radius);
}

uniform vec4 inner_color;
uniform vec4 outer_color;

float value, radius, tallest_edge;

void main() {
    radius = 0.15;
    tallest_edge = gaussian(vec2(1.0, 0.0), radius);
    value = max(0.0, gaussian(coord, radius) - tallest_edge) / (1.0 - tallest_edge);

    gl_FragColor = mix(outer_color, inner_color, value);
}
