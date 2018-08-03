
can_input = true;
with all {
	if object_get_parent(object_index) == obj_mover {
		if moving {
			other.can_input = false
		}
	}
}

stop_input();
if can_input {
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	select = keyboard_check(vk_enter);
	back = keyboard_check(vk_backspace);

	left_pressed = keyboard_check_pressed(vk_left);
	right_pressed = keyboard_check_pressed(vk_right);
	up_pressed = keyboard_check_pressed(vk_up);
	down_pressed = keyboard_check_pressed(vk_down);
	select_pressed = keyboard_check_pressed(vk_enter);
	back_pressed = keyboard_check_pressed(vk_backspace);
}
