// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Teleport(){
		if(dir = 0){
			
			if(place_meeting(x + hsp, y, oWall)){ 
				while(!place_meeting(x + sign(hsp), y, oWall)) { 
					x = x + 8 + sign(hsp); // If no wall move.					
				}				
			}
		}
		if(dir = 180){
			x = x + -8
		}
	vsp = 0
		//if(place_meeting(x + hsp, y, oWall)){ 
		//	while(!place_meeting(x + 8 + sign(hsp), y, oWall)) { 
		//		x = x + sign(hsp); // If no wall move.
		//	}
		//	hsp = 0; 
		//}
		//if(place_meeting(x, y + vsp, oWall)){	
		//	while(!place_meeting(x, y + 8 + sign(vsp), oWall)){
		//		y = y + sign(vsp);
		//	}
		//	vsp = 0; 
		//}						
		if (dir = 180 && sprite_index != MewtwoTeleport) {
			image_xscale = -1;
			sprite_index = MewtwoTeleport;
		}
		if (dir = 0 && sprite_index != MewtwoTeleport) {
			image_xscale = 1;
			sprite_index = MewtwoTeleport;
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
