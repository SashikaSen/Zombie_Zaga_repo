if(hp<=0)
{
	with(instance_create_layer(x,y,layer,O_dead))
	{
		direction=other.hitfrom;
		hsp= lengthdir_x(3,direction);
		vsp= lengthdir_y(3,direction)-1;
		image_xscale=sign(hsp);
	}
	with(mygun) instance_destroy();
	if(instance_exists(O_player))
	{
		//global.kills++;	
		//global.killsthisroom++;
		with(O_game) killtextscale=2;
		
	}
	instance_destroy()	
}	