/// @description STOP STATE

var _can_move = true;
with all {
	if object_get_parent(object_index) == obj_mover {
		if STATE > MOVE.START or hspeed > 0 or vspeed > 0 {
			_can_move = false;
		}
	}
}

if _can_move and global.mode = MODES.PLAY {
	if obj_input.right_pressed and move_h  {
		dir = 0;
		STATE = MOVE.START;
		//moving = !place_meeting(x+8, y, obj_wall);
	}
	if obj_input.up_pressed and move_v {
		dir = 1;
		STATE = MOVE.START;
		//moving = !place_meeting(x, y-8, obj_wall);
	}
	if obj_input.left_pressed and move_h  {
		dir = 2;
		STATE = MOVE.START;
		//moving = !place_meeting(x-8, y, obj_wall);
	}
	if obj_input.down_pressed and move_v {
		dir = 3;
		STATE = MOVE.START;
		//moving = !place_meeting(x, y+8, obj_wall);
	}
}
		
//if can_move moving = true;