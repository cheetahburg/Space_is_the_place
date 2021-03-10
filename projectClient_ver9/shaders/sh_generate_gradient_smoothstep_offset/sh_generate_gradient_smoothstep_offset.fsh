varying vec2 coord;

uniform vec4 inner_color;
uniform vec4 outer_color;

float value;
float offset = 0.75;

void main() {
    value = smoothstep(0.0, 1.0, pow(max(0.0, 1.0 - length(coord)), offset));

    gl_FragColor = mix(outer_color, inner_color, value);
}
