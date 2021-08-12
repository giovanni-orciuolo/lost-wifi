/// @description Logic

var last_x = x, last_y = y;

if (!freeze) {
	// Movement logic
	x += (keyboard_check(key_right) - keyboard_check(key_left)) * spd;
	y += (keyboard_check(key_down) - keyboard_check(key_up)) * spd;
	
	// Shoot logic
	if (keyboard_check(key_shoot) && can_shoot) {
		can_shoot = false;
		instance_create_layer(x + 5, y - 10, LAYER_INSTANCES, obj_ufo_bullet);
		alarm[1] = fire_rate * room_speed;
	}
	
	// Bomb logic
	if (keyboard_check(key_bomb) && can_shoot_bomb) {
		can_shoot_bomb = false;
		var bomb = instance_create_layer(x + 5, y - 10, LAYER_INSTANCES, obj_ufo_bomb);
		
		// Calculate bomb direction
		bomb.direction = -radtodeg(arctan2(y - last_y, x - last_x));

		bomb.speed = 3;
		alarm[4] = bomb_fire_rate * room_speed;
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