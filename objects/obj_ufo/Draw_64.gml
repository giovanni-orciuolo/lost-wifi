draw_set_font(fnt_game);

// Determine signal level
var wifi_signal = wifi_level > 3000 ? 4 : ceil(wifi_level / 1000);
if (wifi_level <= 0) {
	wifi_signal = 0;
}

// Draw score
draw_set_halign(fa_right);
draw_text(room_width - 10, 10, string(player_score));
if (obj_manager.high_score > 0) {
	draw_text(room_width - 10, 25, "HI " + string(obj_manager.high_score));
}
draw_set_halign(fa_left);

// Draw wifi texts
draw_set_halign(fa_center);
draw_text_transformed_color(
	room_width / 2, room_height - 40,
	wifi_signal == 1 ? "WARNING! LOW WIFI SIGNAL" : (wifi_signal == 0 ? "ERROR! WIFI CONNECTION LOST\nCONTROLS NOT RESPONDING" : ""),
	1, 1, 0, c_white, c_white, c_white, c_white, 1
);
draw_set_halign(fa_left);

// Draw wifi level sprite
if (wifi_level > 0) {
	draw_sprite_ext(spr_wifi_indicator, wifi_signal - 1 - (wifi_beeping ? 1 : 0), 0, room_height, 3, 3, 0, c_white, 1);
}
