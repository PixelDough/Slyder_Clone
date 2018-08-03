/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

x += vx;
y += vy;

moving = (vx != 0) or (vy != 0);

if !moving {
	if obj_input.right_pressed {
		dir = 0;
		moving = true;
	}
	if obj_input.up_pressed {
		dir = 1;
		moving = true;
	}
	if obj_input.left_pressed {
		dir = 2;
		moving = true;
	}
	if obj_input.down_pressed {
		dir = 3;
		moving = true;
	}
}



direction = dir * 90;

if moving {
	//speed += 1;
	vx += lengthdir_x(1, direction)
	vy += lengthdir_y(1, direction)
}