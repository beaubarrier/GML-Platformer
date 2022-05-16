// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function eState_Free(){
		if (flash) {
		if (image_index >= 1) flash = false;
		shader_set(shWhite);
	}
draw_self();
shader_reset();
}