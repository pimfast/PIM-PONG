/// @desc

mycolor -= (10);
image_xscale -= 0.01
image_yscale -= 0.01

image_blend = make_color_hsv(0,0,mycolor);

if (mycolor <= 0) {
	instance_destroy();
}