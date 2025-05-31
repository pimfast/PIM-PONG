/// @desc

//audio_stop_all()
selectedbutton = noone;

if (global.progress <= 0) {
	audio_stop_all()
	audio_play_sound(sfx_win,0,0)
	room_goto(rm_game);
}

//if (global.multiplayer == true) {
//	global.progress = 10;
//}

////something like this is so that if your in singleplayer it deletes all the ones you haven't unlocked yet
//for (var i = 0; i < instance_number(obj_whateverthefuckthepaddlebuttonparentsaregonnabecalled; i++) {
//	if (i > global.progress) {
//		instance_destroy(other);
//	}
//}