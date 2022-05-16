// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Fair(){
	var _move = key_right - key_left;
	x = x + hsp;
	y  = y + vsp;
	//Horizontal Speed
	hsp = _move * walksp;
	// Vertical Speed
	vsp = vsp + grv;
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
			state = PSTATE.FREE;
		}
		// Jump
		if(place_meeting(x, y + 1, oWall)) && (key_jump) {
			vsp = -jumpsp 
		}
		//// Variable Jump
		//if(vsp < 0 ) && (!key_jump_held) vsp = max(vsp, 0)
		
		
		if (dir = 0) && (sprite_index != MewtwoFair) {
			image_xscale = 1;
			sprite_index = MewtwoFair
			//mask_index = sAtk_Slash
			//ProcessAttack(sAtk_Slash)
			ds_list_clear(hitByAtk);
		}
		if (dir = 180) && (sprite_index != MewtwoFair) {
			image_xscale = -1;
			sprite_index = MewtwoFair
			//mask_index = sAtk_Slash
			//ProcessAttack(sAtk_Slash)
			ds_list_clear(hitByAtk);
		}
		
	// Stores list of every instance hit on this frame.
	var hitByAtkNow = ds_list_create(); 
	// Marking true will return IDs in order of closest to furthest.
	var hits = instance_place_list(x, y, oSkeleton, hitByAtkNow, false);
		//Grounded Atk Right

		// Use attack hitbox & check for hits
		//mask_index = sAtk_Slash;
		if(hits > 0 ){
			for(var i = 0; i < hits; i++){
				//If instance has not yet been hit by this attack
				var hitID = hitByAtkNow[| i]; // Shorthand for dealing with ds_list, find particular entery i. ds_list_find_valuie(hitByAtkNow, i) does the same thing.
				if(ds_list_find_index(hitByAtk, hitID) == -1){ // Checks to see if value matching the entry exists in list. If it does not we will return -1.
					ds_list_add(hitByAtk, hitID);
					with(hitID){
						EnemyHit(2) // Tells to hit for 2 damage.
					}
				}
			}
		}
	ds_list_destroy(hitByAtkNow)
		//if(dir = 0){
		//	mask_index = sAtk_Slash;
		//}
		//if(dir = 180){
		//	mask_index = sAtk_Slash_Left;
		//}
		if(animation_end()){
			if(dir = 0){
				sprite_index = MewtwoIdle
			}
			if(dir = 180){ 
				//image_xscale = -1;
				sprite_index = MewtwoIdle
			}
			state = PSTATE.FREE;
		}
}