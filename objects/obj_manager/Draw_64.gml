/// @description Game GUI
draw_set_font(fnt_game);

// Game Over screen
if (game_over) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(room_width / 2, room_height / 2, "GAME OVER", 2, 2, 0);
	draw_text_transformed(room_width / 2, (room_height / 2) + 35, "Score: " + string(new_score), 2, 2, 0);

	if (new_score > high_score) {
		draw_text_transformed(room_width / 2, (room_height / 2) + 60, "NEW HIGHSCORE!", 1.5, 1.5, 0);
	}

	draw_text(room_width / 2, (room_height / 2) + (new_score > high_score ? 95 : 80), "Press SHOOT to restart");

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Do not draw anything else
	return;
}

// Draw score
draw_set_halign(fa_right);
draw_text(room_width - 10, 10, string(player_score));
if (high_score > 0) {
	draw_text(room_width - 10, 25, "HI " + string(high_score));
}
draw_set_halign(fa_left);

if (!is_coop && instance_exists(obj_ufo)) {
	// Draw wifi warnings
	draw_set_halign(fa_center);
	draw_text(
		room_width / 2, room_height - 40,
		obj_ufo.wifi_signal == 1 ? "WARNING! LOW WIFI SIGNAL" : (obj_ufo.wifi_signal == 0 ? "ERROR! WIFI CONNECTION LOST\nCONTROLS NOT RESPONDING" : "")
	);
	draw_set_halign(fa_left);
}