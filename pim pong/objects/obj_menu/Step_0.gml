/// @desc

var _up = false;
var _down = false;
var _left = false;
var _right = false;
var _confirm = false;

if (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W"))) {_up = true;}
if (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S"))) {_down = true;}
if (keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(ord("A"))) {_left = true;}
if (keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(ord("D"))) {_right = true;}
if (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(ord("Z"))) {_confirm = true;}

var _oldselectedbutton = noone;
if (selectedbutton != noone) {
	_oldselectedbutton = selectedbutton;
}

if (instance_exists(obj_button_options)) {
	if (selectedbutton == noone) {
		selectedbutton = obj_button_start.id
	}
	switch (selectedbutton) {
		case obj_button_start.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_quit.id
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_options.id;
			}
			if (_left == true) || (_right == true) {
				audio_play_sound(sfx_select2,0,0)
				if (global.multiplayer == false) {
					global.multiplayer = true;
				} else {
					global.multiplayer = false;
				}
			}
			if (_confirm == true) {
				if (global.multiplayer == true) {
					audio_play_sound(sfx_select2,0,0);
					room_goto(rm_multiplayermenu);
				} else {
					audio_play_sound(sfx_score,0,0);
					room_goto(rm_paddleselect);
				}
			}
			break;
		case obj_button_options.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_start.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_quit.id;
			}
			if (_confirm == true) {
				//do the options
				audio_play_sound(sfx_select2,0,0);
				instance_create_layer(720,675,"Instances",obj_button_volumeslider);
				instance_create_layer(1200,675,"Instances",obj_button_deletesave);
				instance_create_layer(720,810,"Instances",obj_button_fullscreen);
				instance_create_layer(1200,810,"Instances",obj_button_back);
				selectedbutton = obj_button_back.id
				instance_destroy(obj_button_start);
				instance_destroy(obj_button_options);
				instance_destroy(obj_button_quit);
				
				if (window_get_fullscreen() == true) {
					obj_button_fullscreen.sprite_index = spr_button_fullscreen;
				} else {
					obj_button_fullscreen.sprite_index = spr_button_windowed;
				}
			}
			break;
		case obj_button_quit.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_options.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_start.id;
			}
			if (_confirm == true) {
				game_end();
			}
			break;
	}
} else {
	switch (selectedbutton) {
		case obj_button_volumeslider.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_fullscreen.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_fullscreen.id;
			}
			if (_left == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_deletesave.id;
			}
			if (_right == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_deletesave.id;
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select2,0,0);
				//volume stuff
			}
			break;
		case obj_button_deletesave.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_back.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_back.id;
			}
			if (_left == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_volumeslider.id;
			}
			if (_right == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_volumeslider.id;
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select2,0,0);
				//delete save data
				file_delete(working_directory + "chicken.jockey");
				game_restart();
			}
			break;
		case obj_button_fullscreen.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_volumeslider.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_volumeslider.id;
			}
			if (_left == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_back.id;
			}
			if (_right == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_back.id;
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select2,0,0);
				if (window_get_fullscreen() == true) {
					window_set_fullscreen(false);
					selectedbutton.sprite_index = spr_button_windowed;
				} else {
					window_set_fullscreen(true);
					selectedbutton.sprite_index = spr_button_fullscreen;
				}
			}
			break;
		case obj_button_back.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_deletesave.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_deletesave.id;
			}
			if (_left == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_fullscreen.id;
			}
			if (_right == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_fullscreen.id;
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select2,0,0);
				instance_create_layer(room_width/2,721,"Instances",obj_button_start);
				instance_create_layer(room_width/2,791,"Instances",obj_button_options);
				instance_create_layer(room_width/2,860,"Instances",obj_button_quit);
				selectedbutton = obj_button_options.id;
				instance_destroy(obj_button_volumeslider);
				instance_destroy(obj_button_deletesave);
				instance_destroy(obj_button_fullscreen);
				instance_destroy(obj_button_back);
			}
			break;
	}
}

if (instance_exists(_oldselectedbutton)) {
	//if (_oldselectedbutton != selectedbutton) {
		_oldselectedbutton.image_index = 0;
		if (instance_exists(obj_button_start)) {
			if (selectedbutton != obj_button_start.id) {
				selectedbutton.image_index = 1;
			} else {
				if (global.multiplayer == false) {
					selectedbutton.image_index = 1;
				} else {
					selectedbutton.image_index = 2;
				}
			}
		} else {
			selectedbutton.image_index = 1;
		}
	//}
}