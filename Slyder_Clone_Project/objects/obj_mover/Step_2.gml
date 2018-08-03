

//var _hit = instance_place(x + hspeed, y + vspeed, obj_wall);
var _hit_l = bbox_left + min(hspeed, 0);
var _hit_r = bbox_right + max(hspeed, 0);
var _hit_u = bbox_top + min(vspeed, 0);
var _hit_d = bbox_bottom + max(vspeed, 0);
var _hit =	collision_rectangle(_hit_l, _hit_u, _hit_r-1, _hit_d-1, obj_wall, false, true);
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
		speed = 0;
		move_snap(16, 16);
		moving = false;
		if (_hit.object_index == obj_enemy and dies) or (_hit.object_index == obj_player and self.object_index == obj_enemy) {
			room_restart();
		}
	}
	
}

if place_empty(x, y){
	room_restart();
}