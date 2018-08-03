

//var _hit = instance_place(x + hspeed, y + vspeed, obj_wall);
var _hit_l = bbox_left + min(vx, 0);
var _hit_r = bbox_right + max(vx, 0);
var _hit_u = bbox_top + min(vy, 0);
var _hit_d = bbox_bottom + max(vy, 0);
var _hit =	collision_rectangle(_hit_l, _hit_u, _hit_r, _hit_d, obj_wall, false, true);
if _hit {
	
	var _do_collision = true;
	if object_get_parent(_hit.object_index) == obj_mover {
		if _hit.moving == true {
			_do_collision = false;
		}
	}
	
	if _do_collision {
		
		while !place_meeting(x+sign(vx), y+sign(vy), obj_wall) {
			x += sign(vx);
			y += sign(vy);
		}
		while place_meeting(x, y, obj_wall) {
			x -= sign(vx);
			y -= sign(vy);
		}
		vx = 0;
		vy = 0;
		move_snap(16, 16);
		if (_hit.object_index == obj_enemy and dies) or (_hit.object_index == obj_player and self.object_index == obj_enemy) {
			room_restart();
		}
	}
	
}

if place_empty(x, y){
	room_restart();
}
