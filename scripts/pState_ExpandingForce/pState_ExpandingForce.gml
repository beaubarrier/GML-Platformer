// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_ExpandingForce(){
	hsp = 0;
	vsp = 0;
	
		if(dir = 0 )   {
			image_xscale = 1
			sprite_index = MewtwoArmCross;
		}
	
		if(dir = 180)  {
			image_xscale = -1
			sprite_index = MewtwoArmCross;
		}
		
			function check_fire(){
				if expandingForce_can_fire {
					expandingForce_can_fire = false;
					alarm[0] = expandingForce_fire_rate;
						//if(dir = 0){
							var _dirr = point_direction(x,y,x-1,y)
							var _dirr2 = point_direction(x,y,x,y)
							
						//}
						//if(dir = 180){
						//	var _dirr = point_direction(x,y,x-1,y )
						//}
					var _inst = instance_create_layer(x,y-10, "ExpandingForce", oExpandingForce)
					var _inst2 = instance_create_layer(x,y-10, "ExpandingForce", oExpandingForce)
					
					_inst.charged = chargeShot;
						with(_inst){
							speed = other.proj_speed-1;
							direction = _dirr;
							owner_id = other;
							//image_angle = -_dirr; 
						}	
						_inst2.charged = chargeShot;
						with(_inst2){
							image_xscale = -1
							speed = other.proj_speed-1;
							direction = _dirr2;
							owner_id = other;
							//image_angle = -_dirr; 
						}	
				}										
			}
	
	check_fire();
	holdFire_amount = 0;
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