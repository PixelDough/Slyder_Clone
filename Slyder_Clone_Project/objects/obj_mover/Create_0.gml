dir = 0;
can_move = true;
moving = false;

hspeed = 0;
vspeed = 0;

enum MOVE {
	STOP,
	START,
	MOVING
}

STATE = MOVE.STOP;
