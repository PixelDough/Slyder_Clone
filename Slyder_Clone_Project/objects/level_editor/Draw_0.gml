gpu_set_blendmode_ext(bm_inv_src_color, bm_src_color);
//draw_rectangle_color(0, 0, room_width/2, room_height/2, c_black, c_black, c_black, c_black, false)
gpu_set_blendmode(bm_normal);

draw_text_wave(10, 10, "EDITOR MODE", text_wave_amp/2, 10);
draw_text_wave(10, 30, "-SELECTED: " + items[current_item, 3], text_wave_amp/2, 10);
//draw_text_wave(10, 45, "   -MOVER: " + string(bool(object_get_parent(items[current_item, 1]) == obj_mover)), text_wave_amp/2, 10);
//draw_text_wave(10, 60, "   -SOLID: " + string(bool(object_is_ancestor(items[current_item, 1], obj_wall))), text_wave_amp/2, 10);

var _gridx = round_a(mouse_x, 16);
var _gridy = round_a(mouse_y, 16);
draw_sprite_ext(items[current_item, 0], 0, _gridx, _gridy, 1, 1, 0, c_gray, 1);
//draw_sprite_ext(spr_editor_box, (global.time/60)%2, _gridx, _gridy, 1, 1, -global.time, c_white, 1);
var _string = object_get_name(items[current_item, 1]);

draw_set_halign(fa_center)
//draw_text_wave(mouse_x, mouse_y + 16, items[current_item, 3], text_wave_amp, 10);
//draw_text_wave(10, 10, items[current_item, 3], text_wave_amp, 10);
draw_set_halign(fa_left);

draw_sprite_ext(spr_cursor, 1, mouse_x, mouse_y, 1, 1, global.time, c_white, 1);

//draw_text(100, 100, array_height_2d(items));

