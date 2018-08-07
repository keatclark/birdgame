image_angle=direction;

if position_meeting(x+lengthdir_x(speed,direction),y+lengthdir_y(speed,direction),obj_block)
	{
	while (!position_meeting(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),obj_block))
		{
		x+=lengthdir_x(1,direction);
		y+=lengthdir_y(l,direction);
		}
	//instance_Destroy();
	}
	