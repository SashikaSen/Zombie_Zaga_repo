draw_self();
if(flash>0)
{ 
 flash--;	
 shader_set(SH_white);
 draw_self();
 shader_reset()
}