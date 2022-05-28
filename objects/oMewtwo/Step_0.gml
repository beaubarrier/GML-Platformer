// Get player inputs
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ord("L"));
	key_jump_held = keyboard_check(ord("L"));
key_atk = keyboard_check_pressed(ord("J"));
	key_spec = keyboard_check_released(ord("K"));
	specHold = keyboard_check(ord("K"));
	key_specPress = keyboard_check_pressed(ord("K"));
key_dodge_held = keyboard_check(ord("I"))
key_dodge_rel = keyboard_check_released(ord("I"))
//key_dodge = keyboard_check(ord("I"));
//curSpri = sprite_get_number(image_index)
//nonKeys = oMewtwo.key_up || oMewtwo.key_atk || oMewtwo.key_down || oMewtwo.key_right || oMewtwo.key_left;

if(teleCount == teleMax){
	oMewtwo.alarm[2] = 100;
	}
	
if(specHold){
	holdFire_amount +=1;
	if(holdFire_amount >= 30){
		chargeShot = true;
		//play sound
	} else {
		chargeShot = false
	}
}

	switch(state){
		case PSTATE.FREE: pState_Free();
		break;
		case PSTATE.JAB: pState_Jab();
		break;
		case PSTATE.NAIR: pState_Nair();
		break;
		case PSTATE.CROUCH_ATK: pState_Crouch_Atk();
		break;
		case PSTATE.FAIR: pState_Fair();
		break;
		case PSTATE.DAIR: pState_Dair();
		break;
		case PSTATE.UPAIR: pState_Upair();
		break
		case PSTATE.UP_TILT: pState_Up_Tilt();
		break;
		case PSTATE.FOR_TILT: pState_For_Tilt();
		break;
		case PSTATE.DODGE: pState_Dodge();
		break;
		case PSTATE.SHADOWBALL: pState_Shadowball();
		break;
		case PSTATE.ASTBAR: pState_Astbar();
		break;
		case PSTATE.EXPANDINGFORCE: pState_ExpandingForce();
		break;
		case PSTATE.PROTECT: pState_Protect();
		break;
		case PSTATE.TELEPORT: pState_Teleport();
		break;
		case PSTATE.SBCHARGE: pState_sbCharge();
		break;

	}