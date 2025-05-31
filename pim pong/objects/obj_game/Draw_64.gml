/// @desc

var _drawflawless = false
var _neutralpointypos = 32;

draw_set_font(fnt_default)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(room_width/3,player1pointsypos,string(points_paddle1))
draw_text((room_width/3)+(room_width/3),player2pointsypos,string(points_paddle2))

if (player1pointsypos < _neutralpointypos) {
	player1pointsypos++
}
if (player2pointsypos < _neutralpointypos) {
	player2pointsypos++
}

draw_set_valign(fa_middle)
if (drawwintext == true) {
	if (global.multiplayer == true) {
		if (points_paddle1 >= global.winscore) {
			draw_text(room_width/2,room_height/2,"P1\nWINS!")
			if (points_paddle2 == 0) {
				_drawflawless = true;
			}
		}
		if (points_paddle2 >= global.winscore) {
			draw_text(room_width/2,room_height/2,"P2\nWINS!")
			if (points_paddle1 == 0) {
				_drawflawless = true;
			}
		}
	} else {
		if (points_paddle1 >= global.winscore) {
			draw_text(room_width/2,room_height/2,"YOU\nWIN!")
			if (points_paddle2 == 0) {
				_drawflawless = true;
			}
		}
		if (points_paddle2 >= global.winscore) {
			draw_text(room_width/2,room_height/2,"YOU\nLOSE!")
		}
	}
	if (_drawflawless == true) {
		draw_text(room_width/2,room_height/3+room_height/3,"FLAWLESS!")
	}
}