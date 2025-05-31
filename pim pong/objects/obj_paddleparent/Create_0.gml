/// @desc

spd = 5;
vspd = 0;

//color settings
paddle01 = [
	spr_paddle01, //the sprite
	sfx_white, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle02 = [
	spr_paddle02, //the sprite
	sfx_lightblue, //sound to play when scoring a point
	192, //pixels from side of screen
]
paddle03 = [
	spr_paddle03, //the sprite
	sfx_lightgreen, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle04 = [
	spr_paddle04, //the sprite
	sfx_pink, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle05 = [
	spr_paddle05, //the sprite
	sfx_red, //sound to play when scoring a point
	192, //pixels from side of screen
]
paddle06 = [
	spr_paddle06, //the sprite
	sfx_yellow, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle07 = [
	spr_paddle07, //the sprite
	sfx_darkblue, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle08 = [
	spr_paddle08, //the sprite
	sfx_orange, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle09 = [
	spr_paddle09, //the sprite
	sfx_darkgreen, //sound to play when scoring a point
	32, //pixels from side of screen
]
paddle10 = [
	spr_paddle10, //the sprite
	sfx_purple, //sound to play when scoring a point
	32, //pixels from side of screen
]

////bonus
//paddle11 = [
//	spr_paddle_gold, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle12 = [
//	spr_paddle_jester, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle13 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle14 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle15 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle16 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle17 = [
//	spr_paddle_gun, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle18 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle19 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]
//paddle20 = [
//	spr_paddle01, //the sprite
//	sfx_purple, //sound to play when scoring a point
//	32, //pixels from side of screen
//]

chosenpaddle = paddle01;

sprite_index = chosenpaddle[0]
y = room_height/2