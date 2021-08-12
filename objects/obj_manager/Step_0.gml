/// @description Increase difficulty and game over logic

if (!game_over) {
	difficulty += 0.2 / room_speed;
}

// layer_hspeed(layer_get_id(LAYER_BACKGROUND), -(1 + (difficulty / 10)));

if (game_over && keyboard_check_pressed(obj_keys.keys_1p[? "shoot"])) {
	game_over = false;
	
	if (new_score > high_score) {
		high_score = new_score;
	}
	
	new_score = 0;
	difficulty = 0;
	alarm[0] = 1.5 * room_speed;
	
	room_restart();
}