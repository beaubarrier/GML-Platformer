switch (state)
{
	case ENEMYSTATE.FREE: eState_Free(); 
	break;
	case ENEMYSTATE.HIT: eState_Hit(); 
	break;
	case ENEMYSTATE.DEAD: eState_Dead(); 
	break;
}

