/// @desc

var _up = false;
var _down = false;
var _left = false;
var _right = false;
var _confirm = false;
var _cancel = false;

if (keyboard_check(vk_up)) || (keyboard_check(ord("W"))) {_up = true;}
if (keyboard_check(vk_down)) || (keyboard_check(ord("S"))) {_down = true;}
if (keyboard_check(vk_left)) || (keyboard_check(ord("A"))) {_left = true;}
if (keyboard_check(vk_right)) || (keyboard_check(ord("D"))) {_right = true;}
if (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(ord("Z"))) {_confirm = true;}
if (keyboard_check(vk_delete)) || (keyboard_check(vk_backspace)) || (keyboard_check(ord("X"))) {_cancel = true;}

if (keyboard_check_pressed(vk_escape)) {
	room_goto(rm_menu);
}

if (canmove == true) {
	if (_cancel == true) {
		rnspd = (spd * 2);
		//if (pixelstotile == 32) {
		//	pixelstotile = 16;
		//}
	} else {
		rnspd = spd;
	}
}

if (_up == true) && (canmove == true) {
	movey = -1;
	canmove = false;
	dir = 0;
}
if (_down == true) && (canmove == true) {
	movey = 1;
	canmove = false;
	dir = 1;
}
if (_left == true) && (canmove == true) {
	movex = -1;
	canmove = false;
	dir = 2;
}
if (_right == true) && (canmove == true) {
	movex = 1;
	canmove = false;
	dir = 3;
}

x += (movex * rnspd);
y += (movey * rnspd);

//count down to being able to do stuff again
if ((movex != 0) || (movey != 0)) && (pixelstotile > 0) {
	pixelstotile -= rnspd;
}
if (pixelstotile <= 0) {
	canmove = true;
	pixelstotile = 32;
	movex = 0;
	movey = 0;
}