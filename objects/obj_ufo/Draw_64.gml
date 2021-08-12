/// @description Draw wifi signal

// Draw wifi level sprite
if (wifi_level > 0) {
	draw_sprite_ext(spr_wifi_indicator, wifi_signal - 1 - (wifi_beeping ? 1 : 0), 0, room_height, 1, 1, 0, c_white, 1);
}
