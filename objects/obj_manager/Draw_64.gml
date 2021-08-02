/// @description Game Over screen

if (game_over) {
	draw_set_halign(fa_center);

	draw_text_transformed(room_width / 2, room_height / 2, "GAME OVER", 2, 2, 0);
	draw_text_transformed(room_width / 2, (room_height / 2) + 25, "Score: " + string(new_score), 2, 2, 0);

	if (new_score > high_score) {
		draw_text_transformed(room_width / 2, (room_height / 2) + 50, "NEW HIGHSCORE!", 1.5, 1.5, 0);
	}

	draw_text(room_width / 2, (room_height / 2) + (new_score > high_score ? 75 : 50), "Press SHOOT to restart");

	draw_set_halign(fa_left);
}
