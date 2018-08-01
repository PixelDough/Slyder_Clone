if room == parent {
	room_goto_next();
}

if keyboard_check_pressed(vk_escape) {
	game_end();
}

if mouse_check_button_pressed(mb_left) {
	instance_create_layer(round_n(mouse_x, 16), round_n(mouse_y, 16), "Walls", obj_wall_h);
}
if mouse_check_button_pressed(mb_right) {
	instance_create_layer(round_n(mouse_x, 16), round_n(mouse_y, 16), "Walls", obj_wall_v);
}