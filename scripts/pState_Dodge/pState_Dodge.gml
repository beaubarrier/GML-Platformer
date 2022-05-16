// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Dodge(){
	if(dir = 0){
		image_xscale = 1;
		sprite_index = MewtwoDodge;
	
	}
	if(dir = 180){
		image_xscale = -1;
		sprite_index = MewtwoDodge;
	
	}
	if( animation_end()){
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