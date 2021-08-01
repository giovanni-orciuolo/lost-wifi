/// @description Initialize keys

var keys = obj_keys.key_bindings[| player_index];

key_up = keys[? "up"];
key_down = keys[? "down"];
key_left = keys[? "left"];
key_right = keys[? "right"];
key_shoot = keys[? "shoot"];

spd = 2;
tilt_degrees = 20;

can_shoot = true;

wifi_level = 4000;
wifi_loss = 50;
wifi_beeping = false;

// Game over flag
freeze = false;