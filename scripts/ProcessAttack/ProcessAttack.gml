function ProcessAttack(argument0) {
	//Start of the attack
	if (sprite_index != argument0)
	{
		sprite_index = argument0
		image_index = 0;	
		ds_list_clear(hitByAtk);
	}

	//Use attack hitbox & check for hits
	mask_index = argument1;
	var hitByAtkNow = ds_list_create()
	var hits = instance_place_list(x,y,oEnemy,hitByAtkNow,false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			//if this instance has not yet been hit by this attack, hit it
			var hitID = hitByAtkNow[| i]
			if (ds_list_find_index(hitByAtk,hitID) == -1)
			{
				ds_list_add(hitByAtk,hitID);
				with (hitID)
				{
					EnemyHit(2);
				}
			}
		}
	}
	ds_list_destroy(hitByAtkNow);
	//mask_index = sIdle;




}
