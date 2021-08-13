/// @description Initialize keys
var keys = obj_keys.key_bindings[| player_index];
image_speed = 0;

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

// Fire rates are in seconds
fire_rate = 0.7;
bomb_fire_rate = 3;

wifi_level = 5000;
wifi_loss = 50;
wifi_gain = 500;
wifi_beeping = false;
freeze = false;
wifi_signal = 4; // Level 0 to 4

invincible = false;
show = true;
dead = false;
shield = false;

player_index = instance_number(obj_ufo) - 1;