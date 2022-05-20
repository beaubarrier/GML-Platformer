// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Teleport(){
		if(dir = 0){
		
		x += hsp+ walksp + .005
	}
	if(dir = 180){
		x += hsp + -walksp + -.005 ;
	}
	// Vertical Speed
	//vsp = vsp + grv;
	
	 
	vsp = 0
	//ProcessAttack(sAtk_Slash, secondArgument) Will be used for a combo attack.
		//Horizontal collision
		if(place_meeting(x + hsp, y, oWall)){ 
			while(!place_meeting(x + sign(hsp), y, oWall)) { 
				x = x + sign(hsp); // If no wall move.
			}
			hsp = 0; 
		}
		// Vertical Collision
		if(place_meeting(x, y + vsp, oWall)){	
			while(!place_meeting(x, y + sign(vsp), oWall)){
				y = y + sign(vsp);
			}
			vsp = 0; 
		}
			
		//}
		// Jump
		//if(place_meeting(x, y + 1, oWall)) && (key_jump) {
		//	vsp = -jumpsp 
		//}
		//// Variable Jump
		////if(vsp < 0 ) && (!key_jump_held) vsp = max(vsp, 0)
		
		
		if (dir = 180 && sprite_index != MewtwoTeleport) {
			image_xscale = -1;
			sprite_index = MewtwoTeleport;
			//mask_index = sAtk_Slash
			//ProcessAttack(sAtk_Slash)
			ds_list_clear(hitByAtk);
		}
		if (dir = 0 && sprite_index != MewtwoTeleport) {
			image_xscale = 1;
			sprite_index = MewtwoTeleport;
			//mask_index = sAtk_Slash
			//ProcessAttack(sAtk_Slash)
			ds_list_clear(hitByAtk);
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