/// @desc

//audio_stop_all()
selectedbutton = noone;

if (!variable_global_exists("multiplayer")) {
	global.multiplayer = false
}

if (!file_exists(working_directory + "chicken.jockey")) {
	var _file = file_text_open_write(working_directory + "chicken.jockey");
	file_text_write_real(_file, 0);
	file_text_close(_file);
}

var _file = file_text_open_read(working_directory + "chicken.jockey");
global.progress = file_text_read_real(_file);
file_text_close(_file);