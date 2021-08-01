/// @description Logic

var last_x = x;

if (!freeze) {
	// Movement logic
	x += (keyboard_check(key_right) - keyboard_check(key_left)) * spd;
	y += (keyboard_check(key_down) - keyboard_check(key_up)) * spd;
	
	// Shoot logic
	if (keyboard_check_pressed(key_shoot) && can_shoot) {
		can_shoot = false;
		instance_create_layer(x, y, LAYER_INSTANCES, obj_bullet);
		alarm[1] = 0.5 * room_speed;
	}
}

// Tilt logic
var tilt = sign(last_x - x);
image_angle = lerp(image_angle, image_angle + (tilt_degrees * tilt), 0.1);
image_angle = clamp(image_angle, -tilt_degrees, tilt_degrees);

if (tilt == 0) {
	image_angle = lerp(image_angle, 0, 0.3);
}

// Wifi level logic
if (wifi_level > 0) {
	wifi_level -= wifi_loss / room_speed;
}
wifi_level = max(wifi_level, 0);

if (wifi_level == 0) {
	freeze = true;
}

// Start beeping when near new level
var beeping = (wifi_level > 3000 && wifi_level <= 3300)
			   || (wifi_level > 2000 && wifi_level <= 2300)
			   || (wifi_level > 1000 && wifi_level <= 1300)
			   || (wifi_level > 0 && wifi_level <= 300);
			   
if (beeping && alarm[0] == -1) {
	alarm_set(0, 0.5 * room_speed);
}