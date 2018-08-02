if current_item == 1 and !mouse_check_button(mb_left) and !mouse_check_button(mb_right) {
	if (mouse_x - round_n(mouse_x, 16)) < (mouse_y - round_n(mouse_y, 16)) {
		items[1, 0] = spr_wall_v;
		items[1, 1] = obj_wall_v;
	} else {
		items[1, 0] = spr_wall_h;
		items[1, 1] = obj_wall_h;
	}
}

mask_index = items[current_item, 0]
var object = instance_place(round_n(mouse_x, 16), round_n(mouse_y, 16), items[current_item, 1])

if mouse_check_button(mb_left) {
	if !object {
		instance_create_layer(round_n(mouse_x, 16), round_n(mouse_y, 16), items[current_item, 2], items[current_item, 1]);
	}
}
if mouse_check_button(mb_right) {
	instance_destroy(object)
}

if mouse_wheel_up() {
	current_item = min(current_item+1, array_height_2d(items)-1);
}
if mouse_wheel_down() {
	current_item = max(current_item-1, 0);
}