//Wave back and forth between 1 and 0 for the demo

if global.setdissolve == true and DissolveAmount > 0 {

	DissolveAmount = 1 + ((0 - 1) * 0.5) + sin((((global.steps / 15) + 8 * 0) / 8) * (pi*2)) * ((0 - 1) * 0.5); 
}

if DissolveAmount = 0 {
	instance_destroy(self);
}
//Draw the sprite using the shader, that's it!
if global.setdissolve = false {
	DissolveShader(sprite_index,image_index,x,y,1);
}
else {
	DissolveShader(sprite_index,image_index,x,y,DissolveAmount);
	//draw_self();
}
