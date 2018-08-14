draw_set_halign(fa_center)
draw_text_transformed(room_width/2, room_height/4, "MENU", 1, 2, 0);

var _y = room_height/2
//draw_text_transformed(room_width/4, _y, "PLAY TAPE\nRESUME TAPE\nOPTION\nPOWER OFF", 1, 2, 0);

draw_set_halign(fa_left)

for (var _i=0; _i<array_length_1d(main_menu); _i++) {
	var _item = main_menu[_i];
	if _i == sel {
		draw_set_halign(fa_right)
		draw_text(room_width/4, _y+(_i * 9), "*");
		draw_set_halign(fa_left)
		draw_text_transformed(room_width/4, _y+(_i * 9), _item[0], 1, 1, 0);
		
		if obj_input.right_pressed {
			//script_execute(asset_get_index(_item[1]), _item[2])
		}
		
	} else {
		draw_text_transformed(room_width/4, _y+(_i * 9), _item[0], 1, 1, 0);
	}
}

sel += obj_input.down_pressed - obj_input.up_pressed;
sel = clamp(sel, 0, array_length_1d(main_menu) - 1)

draw_set_halign(fa_left)