// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Protect(){
	var _move = key_right - key_left;
	vsp =  vsp + grv;
	hsp = _move * walksp;
		if (place_meeting(x+hsp,y,oWall))
		{
			var onePixel = sign(hsp);
			while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
			hsp = 0;
			
		}
	x += hsp;
		if (place_meeting(x,y+vsp,oWall))
		{
			var onePixel = sign(vsp);
			while (!place_meeting(x,y+onePixel,oWall)) y += onePixel;
			vsp = 0;
			hsp=0;
			walksp=0
		}
		
		if(key_dodge_rel){
			walksp = 4
		}
	y += vsp;	
		if(dir=0){
			image_xscale = 1;
			sprite_index = Protect
		}else{
			image_xscale = -1;
			sprite_index = Protect
		}
		if(key_dodge_rel){
				if(dir = 0){
					image_xscale = 1;
					sprite_index = MewtwoIdle;
				}
				if(dir = 180){ 
					image_xscale = -1;
					sprite_index = MewtwoIdle;
				}
				state = PSTATE.FREE;
		}						
}