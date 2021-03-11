varying vec2 coord;

uniform vec4 inner_color;
uniform vec4 outer_color;

float value;
const float steps = 3.0;
const float offset = 0.2;

void main() {
    value = ceil((1.0 - clamp(length(coord) - offset, 0.0, 1.0) / (1.0 - offset)) * steps) / steps;

    gl_FragColor = mix(outer_color, inner_color, value);
}
