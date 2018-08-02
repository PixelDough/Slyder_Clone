ini_open("SavedLevel");

with all {
	if object_get_parent(id) == level_element {
		ini_write_real(object_get_name(id), "Type", object_index);
		ini_write_real(object_get_name(id), "X", x);
		ini_write_real(object_get_name(id), "Y", y);
	}
}

ini_close();