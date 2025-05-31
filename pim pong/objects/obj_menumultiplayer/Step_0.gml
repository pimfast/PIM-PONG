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

if (instance_exists(obj_button_back)) {
	if (selectedbutton == noone) {
		selectedbutton = obj_button_local.id
	}
	switch (selectedbutton) {
		case obj_button_local.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_back.id
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_back.id;
			}
			if (_left == true) || (_right == true) {
				//audio_play_sound(sfx_select2,0,0)
				//switch to server tab if/when i make that
			}
			if (_confirm == true) {
				audio_play_sound(sfx_score,0,0);
				room_goto(rm_paddleselect);
			}
			break;
		case obj_button_back.id:
			if (_up == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_local.id;
			}
			if (_down == true) {
				audio_play_sound(sfx_select,0,0);
				selectedbutton = obj_button_local.id;
			}
			if (_confirm == true) {
				audio_play_sound(sfx_select2,0,0);
				room_goto(rm_menu);
			}
			break;
	}
}

if (instance_exists(_oldselectedbutton)) {
	_oldselectedbutton.image_index = 0;
	selectedbutton.image_index = 1;
}