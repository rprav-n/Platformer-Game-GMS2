// inputs
left = 0;
right = 0;
jump = 0;
jump_held = 0;
dash = 0;

// speed
hsp = 0;
vsp = 0;
walk_spd = 1.5;
max_walk_spd = 3;
accel = 0.4;
decel = 0.3;
grav = 0.4;
max_vsp = 10;

// jumps
jump_spd = -6;
coyote_timer_initial = 10;
coyote_timer = coyote_timer_initial;
min_jump_spd = -2;
can_jump = true;

// status
on_ground = false;
facing = -1; // facing left by default

// dash
can_dash = true;
dash_cooldown_initial = 60;
dash_cooldown = 0;
dash_time_initial = 10;
dash_time = dash_time_initial;
dash_spd = 10;
is_dashing = false;

enum STATE {
	IDLE,
	WALK,
	AIR,
	DASH
};

state = STATE.IDLE;








