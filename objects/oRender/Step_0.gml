 
if (keyboard_check(ord("A")) )
{
    if !GridPlaceMeeting (x - 2, y - 1) {
		x = x - 2;
		y = y - 1;
		sprite_index = sPlayerRunningBL;
		image_speed = 1;
		global.dir = 3;
	}
	
}
else if (keyboard_check(ord("S")))
{
       if !GridPlaceMeeting (x - 2, y + 1) {
		x = x - 2;
		y = y + 1;
		sprite_index = sPlayerRunningL;
		image_speed = 1;
		global.dir = 1;
	}
}
else if (keyboard_check(ord("W")))
{
       if !GridPlaceMeeting (x + 2, y - 1) {
		y = y - 1;
		x = x + 2;
		sprite_index = sPlayerRunningBR;
		image_speed = 1;
		global.dir = 4;
	}
}
else if (keyboard_check(ord("D")))
{
        if !GridPlaceMeeting (x + 2, y + 1) {
		y = y + 1;
		x = x + 2;
		sprite_index = sPlayerRunningR;
		image_speed = 1;	
		global.dir = 2;
	}	
}
else if (keyboard_check(vk_space)) {
		if (global.dir == 1) {
			sprite_index = sPlayerShootingL;
			image_speed = 1;
		}
		if (global.dir == 2) {
			sprite_index = sPlayerShootingR ;
			image_speed = 1;
		}
		
		if (global.dir == 3) {
			sprite_index = sPlayerShootingBL;
			image_speed = 1;
		}
		
		if (global.dir == 4) {
			sprite_index = sPlayerShootingBR;
			image_speed = 1;
		}
	}

else if !keyboard_check(vk_anykey ){
	if (global.dir == 1) {
		sprite_index = sPlayerIdleL;
		image_speed = 0;
	}
	
	if (global.dir == 2) {
		sprite_index = sPlayerIdleR;
		image_speed = 0;
	}
	
	if (global.dir == 3) {
		sprite_index = sPlayerIdleBL;
		image_speed = 0;
	}
	
	
	if (global.dir == 4) {
		sprite_index = sPlayerIdleBR;
		image_speed = 0;
	}
	
}


