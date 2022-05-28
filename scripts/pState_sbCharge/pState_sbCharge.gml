// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_sbCharge(){
	
	sprite_index = MewtwoCharge
		if(key_right){
				dir = 0
				image_xscale = 1
		}
		if(key_left){
				dir = 180
				image_xscale = -1
		}
		if(key_spec){
			state = PSTATE.SHADOWBALL;
		}
		//if( animation_end()){
		//		if(dir = 0){
		//			image_xscale = 1;
		//			sprite_index = MewtwoIdle;
		//		}
		//		if(dir = 180){ 
		//			image_xscale = -1;
		//			sprite_index = MewtwoIdle;
		//		}
		//		state = PSTATE.FREE;
		//	}			
}