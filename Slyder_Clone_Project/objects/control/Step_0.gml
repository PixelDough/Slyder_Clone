if room == parent and music_loaded == true {
	room_goto_next();
}

if keyboard_check_pressed(vk_escape) {
	if room == level1_test {
		room_goto_fade(rm_menu);
	} else {
		game_end();
	}
}



if surface_exists(application_surface) {
	if global.surface_width != round_n(global.surface_width, 512) or global.surface_height != round_n(global.surface_height, 288) {
		//surface_resize(application_surface, round_n(global.surface_width, 512), round_n(global.surface_height, 288));
	}
}

if keyboard_check_pressed(ord("F")) and os_type == os_windows {
	window_set_fullscreen(!window_get_fullscreen())
}

if keyboard_check_pressed(ord("R")) {
	room_goto_fade(room);
}

if keyboard_check_pressed(ord("T")) global.oldtvfilter_enabled = !global.oldtvfilter_enabled; //TV Shader

if global.oldtvfilter_enabled {
	if keyboard_check_pressed(ord("W")) global.tube_enabled = !global.tube_enabled //Warp
}

if keyboard_check_pressed(ord("Y")) audio_play_sound(snd_yeah, 100, false)

event_user(global.mode);

global.time++;
