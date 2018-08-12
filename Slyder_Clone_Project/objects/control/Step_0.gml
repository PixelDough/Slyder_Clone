if room == parent {
	room_goto_next();
}

if keyboard_check_pressed(vk_escape) {
	game_end();
}



if keyboard_check_pressed(ord("S")) {
	surface_resize(application_surface, round_n(window_get_width(), 512), round_n(window_get_height(), 288));
}

if keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen())
}

if keyboard_check_pressed(ord("R")) {
	room_restart();
}

event_user(global.mode);

global.time++;