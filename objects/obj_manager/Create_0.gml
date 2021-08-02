/// @description Create other managers

#macro LAYER_INSTANCES "Instances"

keys = instance_create_layer(0, 0, LAYER_INSTANCES, obj_keys);

alarm[0] = 3 * room_speed;

difficulty = 1;
game_over = false;

new_score = 0;
high_score = 0;
