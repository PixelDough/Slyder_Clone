if room == parent {
	room_goto_next();
}

if keyboard_check_pressed(vk_escape) {
	game_end();
}

if current_item == 1 and !mouse_check_button(mb_left) and !mouse_check_button(mb_right) {
	if (mouse_x - round_n(mouse_x, 16)) < (mouse_y - round_n(mouse_y, 16)) {
		items[1, 0] = spr_wall_v;
		items[1, 1] = obj_wall_v;
	} else {
		items[1, 0] = spr_wall_h;
		items[1, 1] = obj_wall_h;
	}
}

if mouse_check_button(mb_left) {
	if !collision_point(round_n(mouse_x, 16), round_n(mouse_y, 16), items[current_item, 1], false, true) {
		instance_create_layer(round_n(mouse_x, 16), round_n(mouse_y, 16), items[current_item, 2], items[current_item, 1]);
	}
}
if mouse_check_button(mb_right) {
	var object = instance_position(round_n(mouse_x, 16), round_n(mouse_y, 16), items[current_item, 1])
	instance_destroy(object)
}

if mouse_wheel_up() {
	current_item = min(current_item+1, array_height_2d(items)-1);
}
if mouse_wheel_down() {
	current_item = max(current_item-1, 0);
}

if keyboard_check_pressed(ord("S")) {
	surface_resize(application_surface, window_get_width(), window_get_height());
}