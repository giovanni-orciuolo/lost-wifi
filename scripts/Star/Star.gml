function Star(_x, _y) constructor {
    xx = _x;
    yy = _y;
    update_position = function() {
        xx -= 1 + obj_manager.difficulty / 10;
        if (xx < 0) {
            xx = room_width + irandom(32);
            yy = irandom(room_height);
        }
    }
	draw = function() {
		draw_rectangle(xx, yy, xx + 1, yy + 1, c_white);
	}
}