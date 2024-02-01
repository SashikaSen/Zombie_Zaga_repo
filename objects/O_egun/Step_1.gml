x= owner.x;
y=owner.y+10; 

image_xscale= abs(owner.image_xscale);
image_yscale= abs(owner.image_yscale);

if(instance_exists(O_player))
{
		if(O_player.x < x) image_yscale= -image_yscale;
		if(point_distance(O_player.x,O_player.y,x,y)< 600)
		{
				image_angle= point_direction(x,y,O_player.x,O_player.y);
				countdown--;
				if (countdown <= 0)
				{
					countdown = countdownrate;	
					if( !collision_line(x,y,O_player.x,O_player.y,O_wall,false,false))
					{
					
					 audio_play_sound(SN_shot,3,false);
   with(instance_create_layer(x,y,"Bullet",O_ebullet))
   {
	speed = 13;
	direction = other.image_angle+ random_range(-2,2);
	image_angle = direction;
   }
					}
				}
			
		}
	
	
}