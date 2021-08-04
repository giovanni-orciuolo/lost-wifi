/// @description Debug text

draw_text(10, 10, "diff: " + string(obj_manager.difficulty) + " | speed: " + string((1.5 * room_speed) - obj_manager.difficulty) + " | wifi: " + string(wifi_level));
draw_text(10, 25, "shield: " + string(shield));