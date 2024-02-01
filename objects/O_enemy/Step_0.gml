
vsp=vsp+grv;
if ( grounded) && (heightend) && (!place_meeting(x+hsp,y+1, O_wall))
{
		hsp=-hsp;
}

// Horizontal collision method
if(place_meeting(x+hsp,y,O_wall))
{
	while( !place_meeting(x+sign(hsp),y,O_wall))
	{
	  x=x+sign(hsp);	
	}	
	hsp = -hsp;
}
x=x+hsp;

// Vertical collision method
if(place_meeting(x,y+vsp,O_wall))
{
	while( !place_meeting(x,y+sign(vsp),O_wall))
	{
	  y=y+sign(vsp);	
	}	
	vsp=0;
}
y=y+vsp;

// animation method
if (!place_meeting(x,y+1,O_wall))
{
	grounded= false;
 sprite_index=S_enemyA;
 image_speed=0;
 if (sign(vsp)>0) image_index=1; else image_index=0;
 
}
else
{
	grounded=true;
 image_speed = 1;
 if(hsp==0)
 {
   sprite_index=S_enemy;	 
 }
 else
 {
	 sprite_index=S_enemyR;
 }
}
if (hsp !=0) image_xscale=sign(hsp);
 

