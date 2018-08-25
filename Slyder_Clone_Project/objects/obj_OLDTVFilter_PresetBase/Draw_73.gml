if global.oldtvfilter_enabled == true and global.tube_enabled == true {
	gpu_set_blendmode(bm_add);
	draw_set_alpha(0.35);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_dkgray, c_black, c_dkgray, false);
	//draw_ellipse_color(-64, -64, room_width*0.75, room_height*0.75, c_dkgray, c_black, false)
	//draw_circle_color(32, 32, 512, c_dkgray, c_black, false)
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}
