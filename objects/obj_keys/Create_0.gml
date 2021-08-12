/// @description Initialize keys

key_bindings = ds_list_create();

keys_1p = ds_map_create();
keys_1p[? "up"] = ord("W");
keys_1p[? "down"] = ord("S");
keys_1p[? "left"] = ord("A");
keys_1p[? "right"] = ord("D");
keys_1p[? "shoot"] = ord("E");
keys_1p[? "bomb"] = ord("Q");
ds_list_add(key_bindings, keys_1p);

keys_2p = ds_map_create();
keys_2p[? "up"] = vk_up;
keys_2p[? "down"] = vk_down;
keys_2p[? "left"] = vk_left;
keys_2p[? "right"] = vk_right;
keys_2p[? "shoot"] = vk_enter;
keys_2p[? "bomb"] = vk_backspace;
ds_list_add(key_bindings, keys_2p);
