if (show) {
	draw_self();
}

if (shield) {
	image_index = 1;
}

if (wifi_level == 0 && !dead && obj_manager.is_coop) {
	draw_set_halign(fa_middle);
	draw_text(x, y + 10, "NO WIFI!");
	draw_set_halign(fa_left);
}
