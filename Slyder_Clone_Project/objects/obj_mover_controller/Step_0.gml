with all {
	if object_get_parent(object_index) == obj_mover {

		moving = (hspeed != 0) or (vspeed != 0);

		if !moving {
			if obj_input.right_pressed {
				dir = 0;
				moving = !place_meeting(x+8, y, obj_wall);
			}
			if obj_input.up_pressed {
				dir = 1;
				moving = !place_meeting(x, y-8, obj_wall);
			}
			if obj_input.left_pressed {
				dir = 2;
				moving = !place_meeting(x-8, y, obj_wall);
			}
			if obj_input.down_pressed {
				dir = 3;
				moving = !place_meeting(x, y+8, obj_wall);
			}
		}
		
		//if can_move moving = true;
		
		direction = dir * 90;

		if moving {
			speed += 1;
		}
		
		
	}
}