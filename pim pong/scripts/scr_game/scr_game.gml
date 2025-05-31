// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scorepoint(side){
	if (side == 0) {
		obj_game.points_paddle1++;
		obj_game.roundwinner = 0;
		audio_play_sound(obj_paddle.chosenpaddle[1],0,0);
		obj_game.player1pointsypos -= 8;
		
		if (obj_game.points_paddle1 >= global.winscore) {
			audio_play_sound(sfx_win,0,0);
			//effect_create_layer("Effects",ef_ring,room_width/3,56,1,c_white)
			obj_game.alarm[1] = 60;
			
			if (global.multiplayer == false) {
				global.progress += 1
				
				var _file = file_text_open_write(working_directory + "chicken.jockey");
				file_text_write_real(_file,global.progress);
				file_text_close(_file);
			}
		} else {
			audio_play_sound(sfx_score,0,0);
			obj_game.alarm[0] = 1;
		}
	}
	
	if (side == 1) {
		obj_game.points_paddle2++;
		obj_game.roundwinner = 1;
		audio_play_sound(obj_paddle2.chosenpaddle[1],0,0)
		obj_game.player2pointsypos -= 8;
	
		if (obj_game.points_paddle2 >= global.winscore) {
			audio_play_sound(sfx_win,0,0);
			//effect_create_layer("Effects",ef_ring,(room_width/3)+(room_width/3),56,1,c_white)
			obj_game.alarm[1] = 60;
		} else {
			audio_play_sound(sfx_score,0,0);
			obj_game.alarm[0] = 1;
		}
	}
}