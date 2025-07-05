/// @desc

//verticle paddle bump
var _paddle = instance_place(x,y+yspd,obj_paddleparent)
if (_paddle) {
	while (!place_meeting(x,y+sign(yspd),obj_paddleparent)) {
		y += sign(yspd);
	}
	audio_play_sound(sfx_hit,0,0)
	yspd *= -1
	yspd += _paddle.vspd
}
//bump paddle sideways
_paddle = instance_place(x+xspd,y,obj_paddleparent)
if (_paddle) {
	while (!place_meeting(x+sign(xspd),y,obj_paddleparent)) {
		x += sign(xspd);
	}
	audio_play_sound(sfx_hit,0,0)
	xspd *= -1.1
	yspd += _paddle.vspd
	//repeat (30) {
	//	instance_create_layer(x,y,"Instances",obj_hiteffect)
	//}
}

////check if it went so fast that it missed a collision
//var max_length = 500;
//var solid_object = obj_paddle;

//for(var i = 0; i < max_length; i++){

//	var lx = x + lengthdir_x(i, obj_ship.image_angle);
//	var ly = y + lengthdir_y(i, obj_ship.image_angle);

//	if(collision_point(lx, ly, solid_object, false, true)){
//	    break;
//	}

//}

//draw_line(x,y,x+xspeed,y+yspeed)


//bump ceiling/floor
if (y < (0+(sprite_height/2))) {
	audio_play_sound(sfx_hit,0,0)
	yspd *= -1
}
if (y > (room_height-(sprite_height/2))) {
	audio_play_sound(sfx_hit,0,0)
	yspd *= -1
}

//score points
if (x < (0-(sprite_width/2))) {
	scorepoint(1)
	effect_create_layer("Effects",ef_ring,x,y,1,c_white)
	instance_destroy();
}
if (x > (room_width+(sprite_width/2))) {
	scorepoint(0)
	effect_create_layer("Effects",ef_ring,x,y,1,c_white)
	instance_destroy();
}

x += xspd
y += yspd

traildelay -= 1;
if (traildelay <= 0) {
	instance_create_layer(x,y,"Instances",obj_balltrail)
	traildelay = 3;
}