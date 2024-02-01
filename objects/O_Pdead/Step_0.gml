if(done==0)
{
vsp=vsp+grv;

// Horizontal collision method
if(place_meeting(x+hsp,y,O_wall))
{
	while( !place_meeting(x+sign(hsp),y,O_wall))
	{
	  x=x+sign(hsp);	
	}	
	hsp=0;
}
x=x+hsp;

// Vertical collision method
if(place_meeting(x,y+vsp,O_wall))
{
	if(vsp>0) 
	{
		
	done=1;
	image_index=1;
	alarm[0]=60;
	}
	while( !place_meeting(x,y+sign(vsp),O_wall))
	{
	  y=y+sign(vsp);	
	}	
	vsp=0;
}
y=y+vsp;
}