draw_set_font(fnt_game);

var wifi_signal = 0;
if (wifi_level > 3000 && wifi_level <= 4000) {
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

draw_text(0, 0, "Wifi level: " + string(wifi_level));
if (wifi_level > 0) {
	draw_sprite_ext(spr_wifi_indicator, wifi_signal - 1 - (wifi_beeping ? 1 : 0), 0, room_height, 3, 3, 0, c_white, 1);
}

if (wifi_signal == 1) {
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width / 2, room_height - 40, "/!\\ WARNING: LOW WIFI STRENGTH /!\\", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
}

if (wifi_signal == 0) {
	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width / 2, room_height - 40, "/!\\ ERROR: WIFI CONNECTION LOST - CONTROLS NOT WORKING /!\\", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
}