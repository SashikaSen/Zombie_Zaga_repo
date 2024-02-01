if(hascontrol)
{
//input method
key_left=keyboard_check(vk_left) || keyboard_check(ord("A"))
key_right=keyboard_check(vk_right) || keyboard_check(ord("D"))
key_jump=keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))

var move=key_right-key_left;

hsp=move*walksp;
vsp=vsp+grv;
canjump-=1;
if (canjump>0) && (key_jump)
{
 vsp= -10.75;// jump height
 canjump=0;
}
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
	while( !place_meeting(x,y+sign(vsp),O_wall))
	{
	  y=y+sign(vsp);	
	}	
	vsp=0;
}
y=y+vsp;

// animation method

//jump start
if (!place_meeting(x,y+1,O_wall))
{
 sprite_index=S_playerA;
 image_speed=0;
 if (sign(vsp)>0) image_index=1; else image_index=0;
 
}
else
{
	canjump=10;
 if(sprite_index==S_playerA) audio_play_sound(SN_landing,5,false);	
 image_speed = 1;
 //jump end
 
 //run start
 if(hsp==0)
 {
   sprite_index=S_player;	 
 }
 else
 {
	 sprite_index=S_playerR;
 }
}
if (hsp !=0) image_xscale=sign(hsp);
}
else
{
	key_right=0;
	key_left=0;
	key_jump=0;
}	
 

