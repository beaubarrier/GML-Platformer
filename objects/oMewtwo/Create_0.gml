/// @Establish key variables
	hsp = 0;
	vsp = 0;
	grv = 0.3;
	walksp = 4;
jumpsp = 9;
jumps = 0;
jumpsmax = 2;
	dir = 0;
	state = PSTATE.FREE
	hitByAtk = ds_list_create();
fire_rate = 80;
astbar_fire_rate = 20;
expandingForce_fire_rate = 60;
can_fire = true;
astbar_can_fire = true;
expandingForce_can_fire = true;
proj_speed = 5;
holdFire_amount = 0;
chargeShot = false;
	abCount = 1;
	abCount1 = 0;
	abCount2 = 0;
	abCount3 = 0;
	abCount4 = 0;
	abCount5 = 0;
teleCount = 0;
teleMax = 2;

	enum PSTATE{
		FREE,
		JAB,
		FAIR,
		DAIR,
		NAIR,
		UPAIR,
		CROUCH_ATK,
		UP_TILT,
		FOR_TILT,
		SHADOWBALL,
		DODGE,
		ASTBAR,
		EXPANDINGFORCE,
		PROTECT,
		TELEPORT,
		SBCHARGE
	
	}