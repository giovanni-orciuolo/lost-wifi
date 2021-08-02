draw_set_font(fnt_game);

var wifi_signal = 0;
if (wifi_level > 3000) {
	wifi_signal = 4;
}
if (wifi_level > 2000 && wifi_level <= 3000) {
	wifi_signal = 3;
}
if (wifi_level > 1000 && wifi_level <= 2000) {
	wifi_signal = 2;
}
if (wifi_level > 0 && wifi_level <= 1000) {
	wifi_signal = 1;
}

draw_text(10, 10, "diff: " + string(obj_manager.difficulty) + " | speed: " + string((3 * room_speed) - (obj_manager.difficulty / 5)));
if (wifi_level > 0) {
	draw_sprite_ext(spr_wifi_indicator, wifi_signal - 1 - (wifi_beeping ? 1 : 0), 0, room_height, 3, 3, 0, c_white, 1);
}

// Draw score
draw_set_halign(fa_right);
draw_text(room_width - 10, 10, string(player_score));
draw_set_halign(fa_left);

// Draw wifi sprites
if (wifi_signal == 1) {
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width / 2, room_height - 40, "WARNING! LOW WIFI SIGNAL", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
}

if (wifi_signal == 0) {
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width / 2, room_height - 40, "ERROR! WIFI CONNECTION LOST\nCONTROLS NOT RESPONDING", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
}