//if set_angle > 156 {
	speed = bullet_speed;
	//y += bullet_speed * 2;
//}

//else {
//x -= bullet_speed;
//y -= bullet_speed * 2
//}
image_angle = set_angle;
direction = set_angle;

if GridPlaceMeeting(x, y) {
	instance_destroy(self);
}

	
	
	