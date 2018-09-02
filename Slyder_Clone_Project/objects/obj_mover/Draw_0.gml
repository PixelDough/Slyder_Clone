//draw_sprite_ext(sprite_index, image_index, x, y, 1+abs(hspeed/10), 1+abs(vspeed/10), 0, c_white, 1)
//draw_self();

//var _scale = abs(sin((global.time / 10))/2);

if move_v and move_h {
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, sprite_angle, c_white, 1);
} else {
	draw_self();
}
