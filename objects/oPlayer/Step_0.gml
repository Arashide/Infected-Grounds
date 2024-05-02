 
if (keyboard_check(ord("A")) )
{
    if !GridPlaceMeeting (x - 2, y - 1) {
		x = x - 2;
		y = y - 1;
		sprite_index = sPlayerRunningBL;
		image_speed = 1;
	}
	
}
else if (keyboard_check(ord("S")))
{
       if !GridPlaceMeeting (x - 2, y + 1) {
		x = x - 2;
		y = y + 1;
		sprite_index = sPlayerRunningL;
		image_speed = 1;
	}
}
else if (keyboard_check(ord("W")))
{
       if !GridPlaceMeeting (x + 2, y - 1) {
		y = y - 1;
		x = x + 2;
		sprite_index = sPlayerRunningBR;
		image_speed = 1;
	}
}
else if (keyboard_check(ord("D")))
{
        if !GridPlaceMeeting (x + 2, y + 1) {
		y = y + 1;
		x = x + 2;
		sprite_index = sPlayerRunningR;
		image_speed = 1;
	
		
	}
	
}

else {
	sprite_index = sPlayerIdleR;
	image_speed = 1;
}


