// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pState_Astbar(){
	hsp = 0;
	vsp = 0;
	
		if(dir = 0 )   {
			image_xscale = 1
			sprite_index = MewtwoUspec;
		}
	
		if(dir = 180)  {
			image_xscale = -1
			sprite_index = MewtwoUspec;
		}
		
			function check_fire(){
				if astbar_can_fire {
					astbar_can_fire = false;
					alarm[0] = astbar_fire_rate;
						if(dir = 0){
							image_xscale = 1
							var _dirr = point_direction(x,y+1,x+1,y)
						}
						if(dir = 180){
							image_xscale = -1
							var _dirr = point_direction(x,y+1,x-1,y )
						}					
					oMewtwo.abCount = 1
					oMewtwo.abCount1 = 0
					oMewtwo.abCount2 = 0
					oMewtwo.abCount3 = 0
					oMewtwo.abCount4 = 0
					oMewtwo.abCount5 = 0
					
						var _inst = instance_create_layer(x,y, "Astbar", oAstbar)
						_inst.charged = chargeShot;
						if(oMewtwo.dir=180){
								_inst.image_xscale= -2
							}
						with(_inst){
							if(oMewtwo.dir=180){
								_inst.image_xscale= -1
							}
							speed = other.proj_speed+3;
							direction = _dirr;
							owner_id = other;
							//image_angle = -_dirr;								
						}//PROJ END										
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
