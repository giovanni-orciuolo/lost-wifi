/// @description Draw wifi signal

// Draw wifi level sprite
if (wifi_level > 0) {
	if (obj_manager.is_coop) {
		draw_set_halign(fa_middle);
		draw_text(player_index == 0 ? 48 : room_width - 48, room_height - 100, "P" + string(player_index + 1));
		draw_set_halign(fa_left);
	}
	draw_sprite_ext(spr_wifi_indicator, wifi_signal - 1 - (wifi_beeping ? 1 : 0), player_index == 0 ? 0 : room_width - 96, room_height, 1, 1, 0, c_white, 1);
}
