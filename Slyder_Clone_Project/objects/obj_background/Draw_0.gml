
for (var _i=0; _i < array_length_1d(objects); _i++) {
	var _object = objects[_i];
	for (var _y = 0; _y < 1; _y++) {
		draw_sprite_ext(sprite_index, _object[0], _object[1], _object[2]-_y, _object[5], _object[5], _object[3], c_white, 1);
	}
	_object[3] ++
	
	if _object[1] < -64 {
		_object[1] = room_width + 64
	}
	if _object[1] > room_width + 64 {
		_object[1] = -64
	}
	if _object[2] < -64 {
		_object[2] = room_height + 64
	}
	if _object[2] > room_height + 64 {
		_object[2] = -64
	}
	
	_object[1] += lengthdir_x(_object[5], _object[4]) / 5
	_object[2] += lengthdir_y(_object[5], _object[4]) / 5
	
	objects[_i] = _object
}
