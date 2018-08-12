if room == parent {
	room_goto_next();
}

if keyboard_check_pressed(vk_escape) {
	game_end();
}



if surface_exists(application_surface) {
	if global.surface_width != round_n(global.surface_width, 512) or global.surface_height != round_n(global.surface_height, 288) {
		surface_resize(application_surface, round_n(global.surface_width, 512), round_n(global.surface_height, 288));
	}
}

if keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen())
}

if keyboard_check_pressed(ord("R")) {
	room_restart();
}

event_user(global.mode);

global.time++;