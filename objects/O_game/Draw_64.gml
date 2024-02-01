if (room !=menu_room) && (instance_exists(O_player)) && (global.myscore>0)
{
		killtextscale= max(killtextscale*0.85,1);
		draw_set_color(c_black);
		draw_set_font(fmenu);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text_transformed(RES_W-8,12,string(global.myscores)+"Zombies killed",killtextscale,killtextscale,0);
		draw_set_color(c_white); 
		draw_text_transformed(RES_W-10,10,string(global.myscore)+"Zombies killed",killtextscale,killtextscale,0);
}