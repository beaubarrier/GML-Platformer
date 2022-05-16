function eState_Dead() {
	if (sprite_index != sSkeletonDie) {
		sprite_index = sSkeletonDie;
		image_index = 0;
	}
	if (animation_end()) instance_change(oSkelCorpse,true);
}