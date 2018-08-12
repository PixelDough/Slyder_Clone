/// @description START STATE

var _hit = false;
var _buffer = 8;
var _line_hit = ds_list_create();
var _num = 0;

if dir = 0 {
	_hit = instance_place(x+_buffer, y, obj_wall);
	_num = collision_line_list(x, y, room_width, y, obj_mover, false, true, _line_hit, false);
}
if dir = 1 {
	_hit = instance_place(x, y-_buffer, obj_wall);
	_num = collision_line_list(x, y, x, 0, obj_mover, false, true, _line_hit, false);
}
if dir = 2 {
	_hit = instance_place(x-_buffer, y, obj_wall);
	_num = collision_line_list(x, y, 0, y, obj_mover, false, true, _line_hit, false);
}
if dir = 3 {
	_hit = instance_place(x, y+_buffer, obj_wall);
	_num = collision_line_list(x, y, x, room_height, obj_mover, false, true, _line_hit, false);
}

direction = dir * 90;



if _hit {
	if object_get_parent(_hit.object_index) == obj_wall {
		STATE = MOVE.STOP;
	}
	if object_get_parent(_hit.object_index) == obj_mover {
		if _hit.STATE == MOVE.STOP {
			STATE = MOVE.STOP;
		}
	}
}

for (var i = 0; i < _num; ++i;) {
	if _line_hit[| i].STATE == MOVE.START {
		_hit = true;
	}
}

if !_hit {
	//speed += 1;
	STATE = MOVE.MOVING;
}

ds_list_destroy(_line_hit)

//var _finished = false
//with all {
//	if object_get_parent(object_index) == obj_mover {
//		if STATE <= MOVE.START {
//			var _finished = true;
//		}
//	}
//}

//if _finished {
//	with all {
//		if object_get_parent(object_index) == obj_mover {
//			STATE = MOVE.STOP;
//		}
//	}
//}
