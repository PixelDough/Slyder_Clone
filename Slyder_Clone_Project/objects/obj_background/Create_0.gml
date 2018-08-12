color_set = [
	$bc47ab,
	$4f0e88,
	$eade80,
	$9262f0,
	$58eeff,
	//$631ee9,
	$dac626
]

color_set_2 = [
	$380000
]

color_palette = color_set;

objects = []

for (var _i=0; _i < 20; _i++) {
	objects[_i] = [
		(random(image_number)),
		random(room_width),
		random(room_height),
		random(360),
		random(360),
		random(2)+1,
		random(array_length_1d(color_palette))
	]
}