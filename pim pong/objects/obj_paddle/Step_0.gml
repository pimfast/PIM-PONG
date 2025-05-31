/// @desc

var _up = false;
var _down = false;

if (keyboard_check(ord("W"))) {_up = true}
if (keyboard_check(ord("S"))) {_down = true}
if (global.multiplayer == false) {
	if (keyboard_check(vk_up)) {_up = true}
	if (keyboard_check(vk_down)) {_down = true}
}

vspd = (((_up * -1) + _down) * spd);

if ((y + vspd - (sprite_height/2)) <= 0) {
	while ((y + sign(vspd) - (sprite_height/2)) > 0) {
		y += sign(vspd)
	}
	vspd = 0;
}
if ((y + vspd + (sprite_height/2)) >= room_height) {
	while ((y + sign(vspd) + (sprite_height/2)) < room_height) {
		y += sign(vspd)
	}
	vspd = 0;
}

y += vspd;

//var _paddle = instance_place(x+xspd,y,obj_paddleparent)
//if (_paddle) {
//	while (!place_meeting(x+sign(xspd),y,obj_paddleparent)) {
//		x += sign(xspd);
//	}
//	audio_play_sound(sfx_hit,0,0)
//	xspd *= -1.1
//	yspd += _paddle.vspd
//	//repeat (30) {
//	//	instance_create_layer(x,y,"Instances",obj_hiteffect)
//	//}
//}