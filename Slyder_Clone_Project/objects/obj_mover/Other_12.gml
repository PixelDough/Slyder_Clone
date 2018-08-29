/// @description MOVING STATE

speed += spd;

//var _hit = instance_place(x + hspeed, y + vspeed, obj_wall);
var _move_l = bbox_left + min(hspeed, 0);
var _move_r = bbox_right + max(hspeed, 0);
var _move_u = bbox_top + min(vspeed, 0);
var _move_d = bbox_bottom + max(vspeed, 0);
var _hit =	collision_rectangle(_move_l, _move_u, _move_r, _move_d, obj_wall, false, true);
if _hit {
	
	var _do_collision = true;
	if object_get_parent(_hit.object_index) == obj_mover {
		if _hit.moving == true {
			_do_collision = false;
		}
	}
	
	if _do_collision {
		
		while !place_meeting(x+sign(hspeed), y+sign(vspeed), obj_wall) {
			x += sign(hspeed);
			y += sign(vspeed);
		}
		while place_meeting(x, y, obj_wall) {
			x -= sign(hspeed);
			y -= sign(vspeed);
		}
		speed = 0;
		move_snap(16, 16);
		STATE = MOVE.STOP;
		if (_hit.object_index == obj_enemy and dies) {
			instance_destroy();
		}
		if (_hit.object_index == obj_player and self.object_index == obj_enemy) {
			instance_destroy(_hit);
		}
		
	}
	
}

if place_empty(x, y){
	instance_destroy();
}
