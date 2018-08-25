
event_user(STATE);

//sprite_angle = lerp(sprite_angle, dir*90, 0.25);
sprite_angle -= angle_difference(sprite_angle, dir*90) * 0.25;