/// @description Create other managers

#macro LAYER_INSTANCES "Instances"
#macro LAYER_BACKGROUND "Background"

keys = instance_create_layer(0, 0, LAYER_INSTANCES, obj_keys);

difficulty = 0;
game_over = false;

new_score = 0;
high_score = 0;

alarm[0] = (2 * room_speed) - difficulty;

room_goto_next();
