varying vec2 coord;

uniform vec4 inner_color;
uniform vec4 outer_color;

float value;

void main() {
    value = sin((1.0 - length(coord)) * (3.1415 * 0.5));

    gl_FragColor = mix(outer_color, inner_color, value);
}
