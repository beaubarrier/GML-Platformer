/// @description Insert description here
// You can write your code in this editor
var key_left = keyboard_check(ord("A"))
var key_right = keyboard_check(ord("D"))
var dir = 0 
if(key_left){
	dir = 180
}
if(key_right){
	dir = 0
}

if ((oMewtwo.holdFire_amount >= 25) && (oMewtwo.specHold) ) {  image_alpha = .6;}
 else {  image_alpha = 0;}
 
 
 
 if (oMewtwo.image_xscale == 1) { x = oMewtwo.x - 10; }
  else { x = oMewtwo.x + 10;}
  
 
  y = oMewtwo.y - 6;
 

 if(!sprite_index = ShadowballCharge){
	x= oMewtwo.x;
	y=oMewtwo.y;
 }
 
 
