/// @description Insert description here
// You can write your code in this editor
damage = 5
range = 300
owner_id = noone
knockback_time = 5;
charged = false;
alarm[1] = 1; //
oShadowball.speed = oShadowball.speed - .5
function ball_die(){

speed = 0;
instance_change(oShadowballExpl, false)

}
