// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Free(){
	
	
	// Basic movement
	var _move = key_right - key_left;
	
	// Horizontal Speed
	hsp = _move * walksp;

	vsp = vsp + grv;
	// Set facing direction
	if(keyboard_check(ord("A")) && !specHold) {
		dir = 180
	}
	if(keyboard_check(ord("D")) && !specHold){
		dir = 0
	}
	
	//Horizontal collision -- Prevent collision from happening in the first place!
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
		vsp = -jumpsp // Sets vertical speed to -jumsp
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
	
	if(specHold){
		vsp = 0;
		hsp = 0;
		walksp = 0
		sprite_index = MewtwoCharge
		if(key_right){
			dir = 0
			image_xscale = 1
		}
		if(key_left){
			dir = 180
			image_xscale = -1
		}
	}
	
	if(key_spec){walksp = 4}
	
	//moving right and not jumping or falling
	if ((!specHold) && _move > 0 && vsp = 0 && (dir=0) ) {
		image_xscale = 1; 
	    sprite_index = MewtwoRun
	}
	//moving left and not jumping or falling
	if ((!specHold) && _move < 0 && vsp = 0 && (dir=180) ) {
		image_xscale = -1;
	    sprite_index = MewtwoRun;
	}
	//Sets attack state/animation
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
	if((key_spec ) && can_fire = true  && !key_jump && !key_jump_held) {
		image_index = 0
		state = PSTATE.SHADOWBALL;
	}
	if((key_spec && key_up )  && !key_jump && !key_jump_held) {
		image_index = 0
		state = PSTATE.ASTBAR;
	}
	if((key_spec && key_down )  && !key_jump && !key_jump_held) {
		image_index = 0
		state = PSTATE.EXPANDINGFORCE;
	}
	if(key_dodge) {
		image_index = 0;
		state = PSTATE.DODGE
	}
}
