/// @description Create UI
var _width = 300;
var _height = 100;

create_button(800, 650, _width, _height, "Start game", room_to_sign); // <- Do not include ()

create_button(800, 650 + _height + 40, _width, _height, "About Us", on_click);

create_button(800, 650 + (_height + 40) * 2, _width, _height, "Quit", quit_game);