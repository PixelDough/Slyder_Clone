if current_item == 1 and !mouse_check_button(mb_left) and !mouse_check_button(mb_right) {
	if (mouse_x - round_a(mouse_x, 16)) < (mouse_y - round_a(mouse_y, 16)) {
		items[1, 0] = spr_wall_v;
		items[1, 1] = obj_wall_v;
	} else {
		items[1, 0] = spr_wall_h;
		items[1, 1] = obj_wall_h;
	}
}

mask_index = items[current_item, 0]
var object = instance_place(round_a(mouse_x, 16), round_a(mouse_y, 16), items[current_item, 1])

if mouse_check_button(mb_left) {
	if !object {
		instance_create_layer(round_a(mouse_x, 16), round_a(mouse_y, 16), items[current_item, 2], items[current_item, 1]);
	}
}
if mouse_check_button(mb_right) {
	instance_destroy(object)
}

if mouse_wheel_up() {
	current_item = min(current_item+1, array_height_2d(items)-1);
	text_wave_amp = 5
}
if mouse_wheel_down() {
	current_item = max(current_item-1, 0);
	text_wave_amp = 5
}

if keyboard_check_pressed(vk_enter) save_level();
if keyboard_check_pressed(vk_shift) load_level();

text_wave_amp = lerp(text_wave_amp, 1, 0.1);