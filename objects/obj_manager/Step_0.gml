/// @description Increase difficulty and game over logic

is_coop = instance_number(obj_ufo) > 1;

if (!game_over) {
	difficulty += (0.1 + (0.1 * instance_number(obj_ufo))) / room_speed;
}

// layer_hspeed(layer_get_id(LAYER_BACKGROUND), -(1 + (difficulty / 10)));

if (game_over && !text_alarms_start) {
	text_alarms_start = true;
	alarm[1] = text_rate;
}

if (game_over && keyboard_check_pressed(obj_keys.keys_1p[? "shoot"]) && text_show_restart) {
	game_over = false;
	
	if (new_score > high_score) {
		high_score = new_score;
	}
	
	// Reset variables and spawn rate, then restart room
	player_score = 0;
	new_score = 0;
	difficulty = 0;
	text_show_gameover = false;
	text_show_score = false;
	text_show_highscore = false;
	text_show_restart = false;
	text_alarms_start = false;

	alarm[0] = 5 * room_speed;
	room_restart();
}