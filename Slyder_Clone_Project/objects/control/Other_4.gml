if room == parent {
	
} else {

	if room == rm_menu {
		instance_create_layer(0, 0, "META", obj_menu);
	}
	if room == rm_opening {
		instance_create_layer(0, 0, "META", obj_opening);
	} else {
		play_new_song();
	}
	
}
