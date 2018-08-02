if !place_free(x + hspeed, y + vspeed) {//place_meeting(x + hspeed, y + vspeed, obj_wall) {
	if instance_place(x + hspeed, y + vspeed, all) != noone {
		if instance_place(x + hspeed, y + vspeed, all).moving == false {
			speed = 0;
			move_snap(16, 16);
			moving = false
		}
	}
}