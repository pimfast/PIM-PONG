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

if (keyboard_check_pressed(vk_escape)) {
	room_goto(rm_menu)
}

var _oldselectedbutton = noone;
if (selectedbutton != noone) {
	_oldselectedbutton = selectedbutton;
}

if (instance_exists(obj_button_paddle01)) {
	if (selectedbutton == noone) {
		selectedbutton = obj_button_paddle01.id
	}
	switch (selectedbutton) {
		case obj_button_start.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_paddle01.id
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_paddle01.id
			}
			if (_left == true) || (_right == true) {
				audio_play_sound(sfx_select2,0,0)
				//
			}
			if (_confirm == true) {
				audio_play_sound(sfx_win,0,0);
				room_goto(rm_game);
			}
			break;
		case obj_button_paddle01.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_start.id
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_start.id;
			}
			if (_left == true) {
				audio_play_sound(sfx_select2,0,0)
				//selectedbutton = obj_button_paddle10.id
			}
			if (_right == true) {
				audio_play_sound(sfx_select2,0,0)
				selectedbutton = obj_button_paddle02.id
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select,0,0);
				//room_goto(rm_game);
			}
		case obj_button_paddle02.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_start.id
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_start.id;
			}
			if (_left == true) {
				audio_play_sound(sfx_select2,0,0)
				selectedbutton = obj_button_paddle01.id
			}
			if (_right == true) {
				audio_play_sound(sfx_select2,0,0)
				//selectedbutton = obj_button_paddle03.id
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select,0,0);
				//room_goto(rm_game);
			}
			break;
	}
}

if (instance_exists(_oldselectedbutton)) {
	_oldselectedbutton.image_index = 0;
	selectedbutton.image_index = 1;
}