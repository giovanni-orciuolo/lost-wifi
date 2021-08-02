/// @description Increase difficulty

if (!game_over) {
	difficulty += 0.1 / room_speed;
}

if (game_over && keyboard_check_pressed(obj_keys.keys_1p[? "shoot"])) {
	game_over = false;
	
	if (new_score > high_score) {
		high_score = new_score;
	}
	
	new_score = 0;
	difficulty = 1;
	alarm[0] = 3 * room_speed;
	
	room_restart();
}
