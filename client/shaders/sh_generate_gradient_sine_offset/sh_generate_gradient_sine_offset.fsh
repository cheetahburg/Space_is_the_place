varying vec2 coord;

uniform vec4 inner_color;
uniform vec4 outer_color;

float value, lowest;
float offset = -1.0;

void main() {
    lowest = sin(offset * 3.1415 * 0.5);
    value = (sin(mix(offset, 1.0, max(0.0, 1.0 - length(coord))) * 3.1415 * 0.5) - lowest) / (1.0 - lowest);

    gl_FragColor = mix(outer_color, inner_color, value);
}
