

with all {
	if object_get_parent(id) == level_element {
		ds_map_replace(control.save_data, save_data_get_key(), true);
	}
}

with control {
	ds_map_secure_save(save_data, file_name);
}
