varying vec2 coord;

float smootherstep(float t) {
    return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);
}

uniform vec4 inner_color;
uniform vec4 outer_color;

float value;
float offset = 0.75;

void main() {
    value = smootherstep(pow(max(0.0, 1.0 - length(coord)), offset));

    gl_FragColor = mix(outer_color, inner_color, value);
}
