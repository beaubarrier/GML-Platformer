function pState_Free(){
	var _move = key_right - key_left;
	hsp = _move * walksp;
	vsp = vsp + grv;
	
		if(keyboard_check(ord("A")) ) {
			dir = 180
		}
		if(keyboard_check(ord("D"))){
			dir = 0
		}
		//Prevent collision from happening in the first place!
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
		}
	y += vsp;	
		// Jump
		if(place_meeting(x, y + 1, oWall)) && (key_jump) && !specHold {
			image_index = 0;
			jumps = jumpsmax;
		
		}
		if(key_jump) && (jumps > 0) {
			jumps -= 1
			vsp = -jumpsp
		}
		// Enable variable jump
		if(vsp < 0 ) && (!key_jump_held) vsp = max(vsp, 0)
		//Jump Animation
		if(!place_meeting(x, y + 1, oWall)&& !specHold){
			//Jump in place facing right
			if(_move = 0 && vsp > 0 && dir = 0){
				image_xscale = 1;
				sprite_index = MewtwoFall
			}
			if(_move = 0 && vsp < 0 && dir = 0){
				image_xscale = 1;
				sprite_index = MewtwoJump; 
			}
			//Jump in place facing left
			if(_move = 0 && vsp > 0 && dir = 180){
				image_xscale = -1;
				sprite_index = MewtwoFall 
			}
				if(_move = 0 && vsp < 0 && dir = 180){
				image_xscale = -1;
				sprite_index = MewtwoJump 
			}
			//jumping right
			if (_move > 0 && vsp > 0){
			    sprite_index = MewtwoFall 
			}
			//jumping left
			if (_move < 0 && vsp > 0 ){
				image_xscale = -1;
			    sprite_index = MewtwoFall 
			}
			//Falling right
			if (_move > 0 && vsp < 0){
				image_xscale = 1;
			    sprite_index = MewtwoJump   ;
			}
			//Falling left
			if (_move < 0 && vsp < 0){
				image_xscale = -1;
			    sprite_index = MewtwoJump
			}
		}
		//Idle
		if(hsp == 0 && vsp == 0 ){
			switch(dir){
				case 0:
					image_xscale = 1;
					sprite_index = MewtwoIdle
					break;
				case 180:
					image_xscale = -1;
					sprite_index = MewtwoIdle
					break;
			}
		}			
		//Protect - ! need to fix key names
		if(key_dodge_held){
			image_index= 0
			state = PSTATE.PROTECT;
			
		}
		if(key_dodge_rel){
			image_index= 0
			state = PSTATE.FREE;		
		}	
		//Neutral special
		if(specHold && can_fire  && !key_jump && !key_jump_held && !key_left && !key_right && !key_up && !key_down){
			//vsp = 0;
			////hsp = 0;
		state = PSTATE.SBCHARGE
		}
		// Reset walkspeed && shadowball charge gauge
		if(key_spec ){
			oMewtwo.holdFire_amount = 0;
			walksp = 4
		}
		//moving right and not jumping or falling
		if (  _move > 0 && vsp = 0 && (dir=0)  ) {
			image_xscale = 1; 
		    sprite_index = MewtwoRun
		}
		//moving left and not jumping or falling
		if ( _move < 0 && vsp = 0 && (dir=180)  ) {
			image_xscale = -1;
		    sprite_index = MewtwoRun;
		}
		//Attack Inputs
		if(vsp = 0) && (key_atk) && !specHold && (place_meeting(x, y + 1, oWall)) {
			image_index = 0;
			state = PSTATE.JAB;
		}
		if(key_atk && vsp != 0 && !specHold) {
			image_index = 0;
			state = PSTATE.NAIR;
		}
		if(place_meeting(x,y+1,oWall) && key_atk && key_down) && (vsp = 0) && !specHold {
			image_index = 0;
			state = PSTATE.CROUCH_ATK;
		}
		if(vsp != 0) && (key_left || key_right) && (key_atk) && !specHold  {
			image_index = 0;
			state =  PSTATE.FAIR;
		}
		if(vsp != 0) && (key_up) && (key_atk) && !specHold {
			image_index = 0;
			oMewtwo.alarm[1] = 100;
			state =  PSTATE.UPAIR;
		}
		if(vsp != 0) && (key_down) && (key_atk) && !specHold {
			image_index = 0;
			state =  PSTATE.DAIR;
		}
		if(vsp = 0) && (key_up && key_atk) && !specHold {
			image_index = 0;
			state = PSTATE.UPAIR;
		}
		if(place_meeting(x,y+1,oWall) && (vsp = 0) && (key_left || key_right) && key_atk) && !specHold {
			image_index = 0;
			state = PSTATE.FOR_TILT;
		}
		//if((key_spec ) && can_fire = true  && !key_jump && !key_jump_held && !key_left && !key_right && !key_up && !key_down && !specHold) {
		//	image_index = 0
		//	state = PSTATE.SHADOWBALL;
		//}
		if((key_spec && key_up && astbar_can_fire )  && !key_jump && !key_jump_held) {
			image_index = 0
			state = PSTATE.ASTBAR;
		}
		if((key_spec && key_down && expandingForce_can_fire)  && !key_jump && !key_jump_held) {
			image_index = 0
			state = PSTATE.EXPANDINGFORCE;
		}
		if((key_left || key_right ) && key_specPress ) {
			oMewtwo.teleCount = oMewtwo.teleCount + 1;
			if(oMewtwo.teleCount < 3){
				image_index = 0
				state = PSTATE.TELEPORT;
			}							
		}
}
