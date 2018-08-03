

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
	speed =2;
}

var _hit = instance_place(x + hspeed, y + vspeed, obj_wall);
if _hit {
	while !place_meeting(x+sign(hspeed), y+sign(vspeed), obj_wall) {
		x += sign(hspeed);
		y += sign(vspeed);
	}
	speed = 0;
	move_snap(8, 8);
	moving = false;
	if (_hit.object_index == obj_enemy and dies) or (_hit.object_index == obj_player and self.object_index == obj_enemy) {
		room_restart();
	}
}

if place_empty(x, y){
	room_restart();
}