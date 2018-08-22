
items = [];

//items[0, 0] = spr_tile1_test;
//items[0, 1] = obj_tile1_test;
//items[0, 2] = "Ground";
//items[0, 3] = "Ground";
editor_add(spr_tile1_test, obj_tile1_test, "Ground", "Ground");

//items[1, 0] = spr_wall;
//items[1, 1] = obj_wall;
//items[1, 2] = "Walls";
//items[1, 3] = "Walls";
editor_add(spr_wall, obj_wall, "Walls", "Walls");

//items[2, 0] = spr_player_test;
//items[2, 1] = obj_player;
//items[2, 2] = "Objects";
//items[2, 3] = "Player";
editor_add(spr_player_test, obj_player, "Objects", "Player");

//items[3, 0] = spr_roof1;
//items[3, 1] = obj_roof1;
//items[3, 2] = "Roofs";
//items[3, 3] = "Roof";
editor_add(spr_roof1, obj_roof1, "Roofs", "Roof");

//items[4, 0] = spr_enemy_test;
//items[4, 1] = obj_enemy;
//items[4, 2] = "Objects";
//items[4, 3] = "Enemy";
editor_add(spr_enemy_test, obj_enemy, "Objects", "Enemy");

//items[5, 0] = spr_ball;
//items[5, 1] = obj_ball;
//items[5, 2] = "Objects";
//items[5, 3] = "Ball";
editor_add(spr_ball, obj_ball, "Objects", "Ball");

//items[6, 0] = spr_ball_v;
//items[6, 1] = obj_ball_v;
//items[6, 2] = "Objects";
//items[6, 3] = "Ball (V)";
editor_add(spr_ball_v, obj_ball_v, "Objects", "Ball (V)");

//items[7, 0] = spr_ball_h;
//items[7, 1] = obj_ball_h;
//items[7, 2] = "Objects";
//items[7, 3] = "Ball (H)";
editor_add(spr_ball_h, obj_ball_h, "Objects", "Ball (H)");

//items[8, 0] = spr_goal;
//items[8, 1] = obj_goal;
//items[8, 2] = "Objects";
//items[8, 3] = "Goal";
editor_add(spr_goal, obj_goal, "Objects", "Goal");

current_item = 0;

depth = -500

text_wave_amp = 1