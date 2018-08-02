ini_open("SavedLevel");

with all {
	if object_get_parent(id) == level_element {
		instance_destroy(id);
	}
}

ini_close();