
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



//gun stuff
current_gun=0;
scr_set_inventory();
scr_add_inventory(0);

gun_x=-4;
gun_y=0;

gun_frame=0;

acc=3;
damage=15;

//gun stats
max_gun_frame=0;
rate=0;
clip=0;
current_bullets=clip;
max_b=0;
bullets=max_b;
reload=0;
spread=0;
length=0;
name="";
knock=0;

//set aim
aim=point_direction(x+gun_x,y+gun_y,mouse_x,mouse_y);

//select guns with numbers
//if keyboard_check_pressed(ord("1"))
//	{
//	current_gun=0;
//	alarm[1]=-1;
//	}
//if keyboard_check_pressed(ord("2"))
//	{
//	current_gun=1;
//	alarm[1]=-1;
//	}
//current_gun=clamp(current_gun,0,ds_list_size(guns)-1);