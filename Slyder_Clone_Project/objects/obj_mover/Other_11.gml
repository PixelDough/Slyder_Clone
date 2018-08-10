/// @description START STATE

var _hit = false;

if dir = 0 {
	_hit = instance_place(x+8, y, obj_wall);
}
if dir = 1 {
	_hit = instance_place(x, y-8, obj_wall);
}
if dir = 2 {
	_hit = instance_place(x-8, y, obj_wall);
}
if dir = 3 {
	_hit = instance_place(x, y+8, obj_wall);
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



if !_hit {
	//speed += 1;
	STATE = MOVE.MOVING;
}



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
