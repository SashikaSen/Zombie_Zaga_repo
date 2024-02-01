if ( mode != Trans_Mode.OFF)
{
	if(mode == Trans_Mode.Intro)
	{
		 percent = max(0,percent - 0.05);		
	}	
	else
	{
		 percent = min(1,percent + 0.05);	
	}	
	if (percent == 1) or (percent==0)
	{
		switch (mode)
		{
			case Trans_Mode.Intro:
			{
				mode = Trans_Mode.OFF;
			  break
			}
			case Trans_Mode.NEXT:
			{
				mode = Trans_Mode.Intro;
				room_goto_next();
			  break
			}
			case Trans_Mode.GOTO:
			{
				mode = Trans_Mode.Intro;
				room_goto(target);
			  break
			}
			case Trans_Mode.Restart:
			{
				game_restart();
			  break
			}
			
		}		
	
    }	
}