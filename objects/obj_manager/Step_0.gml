/// @description Increase difficulty and game over logic

is_coop = instance_number(obj_ufo) > 1 && coop_started;

if (!game_over) {
	difficulty += (0.1 + (0.1 * instance_number(obj_ufo))) / room_speed;
}

// layer_hspeed(layer_get_id(LAYER_BACKGROUND), -(1 + (difficulty / 10)));

if (game_over && !text_alarms_start) {
	if (audio_is_playing(ost_lost_wifi)) {
		audio_stop_sound(ost_lost_wifi);
	}
	
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
	coop_started = false;

	alarm[0] = 5 * room_speed;
	room_restart();
}

// Spawn Player 2
if (!is_coop && !coop_started) {
	if (
		keyboard_check_pressed(p2_key_up) ||
		keyboard_check_pressed(p2_key_down) ||
		keyboard_check_pressed(p2_key_left) ||
		keyboard_check_pressed(p2_key_right) ||
		keyboard_check_pressed(p2_key_shoot) ||
		keyboard_check_pressed(p2_key_bomb)
	) {
		var p2 = instance_create_layer(room_width / 2 + 80, room_height / 2, LAYER_INSTANCES, obj_ufo);
		p2.player_index = 1;
		p2.sprite_index = spr_ufo_coop;
		coop_started = true;
	}
}