ini_open("SavedLevel");

with all {
	if object_get_parent(id) == level_element {
		instance_destroy(id);
	}
}

with control {
	if !file_exists(file_name) exit;
	ds_map_destroy(save_data);
	save_data = ds_map_secure_load(file_name)
	
}

ini_close();