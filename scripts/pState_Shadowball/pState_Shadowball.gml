// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Shadowball(){
	hsp = 0;
	vsp = 0;
	
		if(dir = 0 )   {
			image_xscale = 1
			sprite_index = MewtwoShadowball;
		}
	
		if(dir = 180)  {
			image_xscale = -1
			sprite_index = MewtwoShadowball;
		}
		
			function check_fire(){
				if can_fire {
					can_fire = false;
					alarm[0] = fire_rate;
						if(dir = 0){
							var _dirr = point_direction(x,y,x,y)
						}
						if(dir = 180){
							var _dirr = point_direction(x,y,x-1,y )
						}
					var _inst = instance_create_layer(x,y, "Shadowball", oShadowball)
					
					_inst.charged = chargeShot;
						with(_inst){
							speed = other.proj_speed;
							direction = _dirr;
							owner_id = other;
							//image_angle = -_dirr; 
						}
					
				}
					
					
			}
	
	check_fire();
	holdFire_amount = 0;
		
		//if(){
		
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