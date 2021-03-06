varying vec2 coord;

uniform vec4 inner_color;
uniform vec4 outer_color;

float value;

void main() {
    value = 1.0 - length(coord);

    gl_FragColor = mix(outer_color, inner_color, value);
}
