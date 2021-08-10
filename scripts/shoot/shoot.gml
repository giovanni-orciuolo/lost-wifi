function shoot(bullet_obj, target) {
	var bullet = instance_create_layer(x, y, LAYER_INSTANCES, bullet_obj);
	with (bullet) {
		speed = 4 + (obj_manager.difficulty / 10);
		direction = point_direction(x, y, target.x, target.y);
		image_angle = direction;
	}
	
	return bullet;
}