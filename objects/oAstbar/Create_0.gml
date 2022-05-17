/// @description Insert description here
// You can write your code in this editor
damage = 5
range = 300
owner_id = noone
knockback_time = 5;
charged = false;
alarm[2] = 5;
image_xscale = .7;
image_yscale = .7;
	function ball_die(){
		speed = 0;
		instance_change(oShadowballExpl, false)
	}
