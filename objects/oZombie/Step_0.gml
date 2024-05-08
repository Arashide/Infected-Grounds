 if global.startsteps {global.steps += 1;}
 
if (keyboard_check(vk_left) )
{
    if !GridPlaceMeeting (x - 2, y - 1) {
		x = x - 2;
		y = y - 1;
		sprite_index = sZombieRunningBR;
		image_speed = 1;
		global.dir2 = 3;
		global.setdissolve = true;
		
		global.startsteps = true;
	}
	
}
else if (keyboard_check(vk_down))
{
       if !GridPlaceMeeting (x - 2, y + 1) {
		x = x - 2;
		y = y + 1;
		sprite_index = sZombieRunningL;
		image_speed = 1;
		global.dir2 = 1;
	}
}
else if (keyboard_check(vk_up))
{
       if !GridPlaceMeeting (x + 2, y - 1) {
		y = y - 1;
		x = x + 2;
		sprite_index = sZombieRunningBL;
		image_speed = 1;
		global.dir2 = 4;
	}
}
else if (keyboard_check(vk_right))
{
        if !GridPlaceMeeting (x + 2, y + 1) {
		y = y + 1;
		x = x + 2;
		sprite_index = sZombieRunningR;
		image_speed = 1;	
		global.dir2 = 2;
	}	
}

else if !keyboard_check(vk_anykey) {
	image_speed = 0;
}


