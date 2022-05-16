function eState_Hit() {
	//Just hit
	if (hitNow)
	{
		sprite_index = sSkeletonHit
		image_index = 0;
		hitNow = false;
		frameCount = 0;
	}
	frameCount++;
	if (frameCount > 20) 
	{
		frameCount = 0;
		sprite_index = sSkeleton
		state = ENEMYSTATE.FREE;
	}


}
