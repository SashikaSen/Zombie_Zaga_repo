
vsp=2;
grv=0.3;
walksp=3;
hsp=walksp;

hp=3;
flash=0;

hitfrom=0;


if(haswepon)
{
   	mygun= instance_create_layer(x,y,"Gun",O_egun)
	with(mygun)
	{
	  	owner=other.id;
	}
	
}
else mygun=noone;
