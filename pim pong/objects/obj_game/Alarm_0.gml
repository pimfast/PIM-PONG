/// @desc spawn ball

var _ball = instance_create_layer(room_width/2,room_height/2,"Instances",obj_ball);
if (roundwinner == 0) {
	_ball.xspd = -10;
} else {
	_ball.xspd = 10;
}