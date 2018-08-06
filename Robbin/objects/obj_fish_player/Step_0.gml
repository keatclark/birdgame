
window_set_cursor(cr_none);
//not per frame movement
var seconds_passed = delta_time/1000000;
var move_speed_this_frame = move_speed*seconds_passed;

var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    x += lengthdir_x(move_speed_this_frame, move_dir);
    y += lengthdir_y(move_speed_this_frame, move_dir);
}

//Flipping & Changing the sprite
//Assign the mouse_x variable
mx= mouse_x 

//Flip the sprite according to mouse position
if mx > obj_fish_player.x 
sprite_index= spr_running_fish_right 
else if 
mx < obj_fish_player.x 
sprite_index = spr_running_fish_left

//Changing from running to idle
if mx > obj_fish_player.x && (!keyboard_check(ord("W"))) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("S"))) && (!keyboard_check(ord("D"))) 
sprite_index= spr_idle_fish_right

//display the idle fish sprite, facing right.
else if
mx <obj_fish_player.x && (!keyboard_check(ord("W"))) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("S"))) && (!keyboard_check(ord("D"))) 
sprite_index= spr_idle_fish_left

//display the idle fish sprite, facing left.

camh = camera_get_view_height(view_camera[0]);
camw = camera_get_view_width(view_camera[0]);

camx += ((x - (camw/2) - camx) * 0.08)
camy += ((y - (camh/2) - camy) * 0.08)

camera_set_view_pos(view_camera[0], camx, camy);