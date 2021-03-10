attribute vec4 in_Position;

varying vec2 coord;

void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    coord = vec2(gl_Position.x, -gl_Position.y);
}
