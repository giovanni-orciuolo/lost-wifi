/// @description Die

if (random(100) <= 25) {
	instance_create_layer(x, y, LAYER_INSTANCES, obj_wifi_pickup);
}
with (other) instance_destroy();

dead = true;
hspeed = 0;
sprite_index = spr_death_small;
image_speed = 30 / room_speed;
