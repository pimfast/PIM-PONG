/// @desc

var _up = false;
var _down = false;

if (global.multiplayer == true) {
	if (keyboard_check(vk_up)) {_up = true}
	if (keyboard_check(vk_down)) {_down = true}
} else {
	_up = irandom(1)
	_down = irandom(1)
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