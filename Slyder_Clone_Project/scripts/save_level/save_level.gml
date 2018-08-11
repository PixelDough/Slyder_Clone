
var _filename = get_string("Please name your level", "My Level");

ini_open(_filename);
ini_section_delete("Level")
var _list = ds_list_create();

with all {
	if object_is_ancestor(object_index, level_element) {
		ds_list_add(_list, [x, y, layer, object_index]);
	}
}

var list_string = ds_list_write(_list);

ini_write_string("Level", "Data", list_string);

clipboard_set_text(list_string);

ini_close();

ds_list_destroy(_list);