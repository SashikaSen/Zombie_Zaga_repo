w = display_get_gui_width();
h= display_get_gui_height();
h_half= h/2;

enum Trans_Mode
{
	OFF,
	NEXT,
	GOTO,
	Restart,
	Intro	
}	

mode = Trans_Mode.Intro;
percent= 1;
target = room;