/// @description Create stars

num_stars = 40;
stars = array_create(num_stars);

for (var i = 0; i < num_stars; i++) {
	stars[i] = new Star(irandom(room_width), irandom(room_height));
}