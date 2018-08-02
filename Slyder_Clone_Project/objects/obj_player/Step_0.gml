if !moving {
	if keyboard_check_pressed(vk_right) {
		dir = 0;
		moving = true;
	}
	if keyboard_check_pressed(vk_up) {
		dir = 1;
		moving = true;
	}
	if keyboard_check_pressed(vk_left) {
		dir = 2;
		moving = true;
	}
	if keyboard_check_pressed(vk_down) {
		dir = 3;
		moving = true;
	}
}

direction = dir * 90;

if moving {
	speed += 0.1;
}

if place_meeting(x + hspeed, y + vspeed, obj_wall) {
	speed = 0;
	move_snap(8, 8);
	moving = false
}

if place_empty(x, y){
	room_restart();
}