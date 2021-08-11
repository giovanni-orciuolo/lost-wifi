function sin_oscillate(minimum, maximum, position) {
	return (maximum - minimum) / 2 * dsin(position) + (maximum + minimum) / 2;
}