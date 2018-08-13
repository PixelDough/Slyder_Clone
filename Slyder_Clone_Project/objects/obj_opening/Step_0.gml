time++;

if keyboard_check_pressed(vk_enter) {
	global.noise_enabled = true;
	room_goto_fade(level1_test);
}