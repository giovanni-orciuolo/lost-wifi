/// @description Draw tutorial keys

// Margin is 5

draw_sprite_ext(spr_tutorial_keys, 0, room_width / 2 - 138, 70, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_tutorial_keys, 1, room_width / 2 - 101, 33, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_tutorial_keys, 2, room_width / 2 - 101, 70, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_tutorial_keys, 3, room_width / 2 - 64, 70, 1, 1, 0, c_white, 1);

draw_sprite_ext(spr_tutorial_keys, 4, room_width / 2 - 20, 35, 2, 2, 0, c_white, 1);

draw_sprite_ext(spr_tutorial_keys, 5, room_width / 2 + 50, 60, 2, 2, 0, c_white, 1);

draw_set_halign(fa_center);
draw_text(room_width / 2 - 83, 115, "MOVE");
draw_text(room_width / 2, 115, "SHOOT");
draw_text(room_width / 2 + 83, 115, "BOMB");
draw_set_halign(fa_left);