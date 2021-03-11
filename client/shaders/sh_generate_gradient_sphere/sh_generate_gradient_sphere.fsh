varying vec2 coord;

uniform vec4 inner_color;
uniform vec4 outer_color;

float value;

void main() {
    value = sqrt(max(0.0, 1.0 - coord.x * coord.x - coord.y * coord.y));

    gl_FragColor = mix(outer_color, inner_color, value);
}
