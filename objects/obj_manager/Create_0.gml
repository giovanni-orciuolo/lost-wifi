/// @description Create other managers

#macro LAYER_INSTANCES "Instances"
// #macro LAYER_BACKGROUND "Background"

keys = instance_create_layer(0, 0, LAYER_INSTANCES, obj_keys);
instance_create_layer(0, 0, LAYER_INSTANCES, obj_tutorial);

difficulty = 0;
game_over = false;

new_score = 0;
high_score = 0;

alarm[0] = (1.5 * room_speed) - difficulty;

room_goto_next();
