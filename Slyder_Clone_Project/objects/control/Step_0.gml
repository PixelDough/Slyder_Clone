if room == parent {
	room_goto_next();
}

if keyboard_check_pressed(vk_escape) {
	game_end();
}



if keyboard_check_pressed(ord("S")) {
	surface_resize(application_surface, window_get_width(), window_get_height());
}

event_user(global.mode);