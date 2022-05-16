function pState_Jab(){
	hsp = 0;
	vsp = 0;

		//Grounded Atk Right
		if(dir = 0)   {
			image_xscale = 1
			sprite_index = MewtwoJab;
			//mask_index = sAtk_Slash
			//ProcessAttack(sAtk_Slash)
			ds_list_clear(hitByAtk);
		}
	
		// Grounded Atk Left
		if(dir = 180)  {
			image_xscale = -1
			sprite_index = MewtwoJab;
			//mask_index = sAtk_Slash_Left;
			//ProcessAttack(sAtk_Slash_Left)
			ds_list_clear(hitByAtk);
		}
		
		//if(dir = 0){
		//	mask_index = sAtk_Slash;
		//}
		//if(dir = 180){
		//	mask_index = sAtk_Slash_Left;
		//}
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