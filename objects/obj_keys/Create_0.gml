/// @description Initialize keys

key_bindings = ds_list_create();

keys_1p = ds_map_create();
keys_1p[? "up"] = vk_up;
keys_1p[? "down"] = vk_down;
keys_1p[? "left"] = vk_left;
keys_1p[? "right"] = vk_right;
keys_1p[? "shoot"] = vk_enter;
keys_1p[? "bomb"] = vk_rshift;
ds_list_add(key_bindings, keys_1p);

keys_2p = ds_map_create();
keys_2p[? "up"] = ord("w");
keys_2p[? "down"] = ord("s");
keys_2p[? "left"] = ord("a");
keys_2p[? "right"] = ord("d");
keys_2p[? "shoot"] = ord("q");
keys_2p[? "bomb"] = ord("e");
ds_list_add(key_bindings, keys_2p);
