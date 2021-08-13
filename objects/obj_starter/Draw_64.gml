/// @description

draw_set_font(fnt_game);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width / 2, room_height / 2, "CLICK HERE TO START", 1, 1, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var s = spr_tutorial_key_template, scale = 1, rw = room_width;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(90, 20, "PLAYER 1");

draw_sprite_ext(s, 0, 50, 90, scale, scale, 0, c_white, 1);
draw_text_transformed(50, 90, "A", 1, 1, 0);

draw_sprite_ext(s, 0, 87, 53, scale, scale, 0, c_white, 1);
draw_text_transformed(87, 53, "W", 1, 1, 0);

draw_sprite_ext(s, 0, 87, 90, scale, scale, 0, c_white, 1);
draw_text_transformed(87, 90, "S", 1, 1, 0);

draw_sprite_ext(s, 0, 124, 90, scale, scale, 0, c_white, 1);
draw_text_transformed(124, 90, "D", 1, 1, 0);

draw_sprite_ext(s, 0, 87, 160, scale, scale, 0, c_white, 1);
draw_text_transformed(87, 160, "E", 1, 1, 0);

draw_sprite_ext(s, 0, 87, 230, scale, scale, 0, c_white, 1);
draw_text_transformed(87, 230, "Q", 1, 1, 0);

draw_set_valign(fa_top);

draw_text(87, 115, "MOVE");
draw_text(87, 185, "SHOOT");
draw_text(87, 255, "BOMB");

draw_set_halign(fa_left);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

s = spr_tutorial_keys_arrows;
draw_text(rw - 90, 20, "PLAYER 2");

draw_sprite_ext(s, 3, rw - 50, 90, scale, scale, 0, c_white, 1);
draw_sprite_ext(s, 1, rw - 87, 53, scale, scale, 0, c_white, 1);
draw_sprite_ext(s, 2, rw - 87, 90, scale, scale, 0, c_white, 1);
draw_sprite_ext(s, 0, rw - 124, 90, scale, scale, 0, c_white, 1);
draw_sprite_ext(s, 4, rw - 87, 160, scale, scale, 0, c_white, 1);
draw_sprite_ext(s, 5, rw - 86, 240, scale, scale, 0, c_white, 1);

draw_set_valign(fa_top);

draw_text(rw - 87, 115, "MOVE");
draw_text(rw - 87, 185, "SHOOT");
draw_text(rw - 87, 255, "BOMB");

draw_set_halign(fa_left);