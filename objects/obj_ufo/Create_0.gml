/// @description Initialize keys

var keys = obj_keys.key_bindings[| player_index];

key_up = keys[? "up"];
key_down = keys[? "down"];
key_left = keys[? "left"];
key_right = keys[? "right"];
key_shoot = keys[? "shoot"];
key_bomb = keys[? "bomb"];

spd = 3;
tilt_degrees = 20;

can_shoot = true;
can_shoot_bomb = true;

wifi_level = 5000;
wifi_loss = 50;
wifi_gain = 500;
wifi_beeping = false;
freeze = false;

player_score = 0;

invincible = false;
show = true;
dead = false;