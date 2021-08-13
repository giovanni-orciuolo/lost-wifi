/// @description Create other managers

#macro LAYER_INSTANCES "Instances"
// #macro LAYER_BACKGROUND "Background"

keys = instance_create_layer(0, 0, LAYER_INSTANCES, obj_keys);
instance_create_layer(0, 0, LAYER_INSTANCES, obj_tutorial);

difficulty = 0;
game_over = false;

player_score = 0;
new_score = 0;
high_score = 0;
is_coop = false;

alarm[0] = 5 * room_speed;

// Control variables for game over screen texts
text_alarms_start = false;
text_rate = 1.5 * room_speed;
text_show_gameover = false;
text_show_score = false;
text_show_highscore = false;
text_show_restart = false;

// Coop player spawn
var keys = obj_keys.key_bindings[| 1];
p2_key_up = keys[? "up"];
p2_key_down = keys[? "down"];
p2_key_left = keys[? "left"];
p2_key_right = keys[? "right"];
p2_key_shoot = keys[? "shoot"];
p2_key_bomb = keys[? "bomb"];

coop_started = false;

room_goto_next();
