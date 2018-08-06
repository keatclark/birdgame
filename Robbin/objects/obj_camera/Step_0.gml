/// Move the camera toward your mouse
var xTo,yTo;
move_towards_point(mouse_x,mouse_y,0);
xTo = obj_fish_player.x + lengthdir_x(min(90,distance_to_point(mouse_x,mouse_y)),direction);
yTo = obj_fish_player.y + lengthdir_y(min(90,distance_to_point(mouse_x,mouse_y)),direction);

x += (xTo-x)/10;
y += (yTo-y)/10;

//Get target view position and size. size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[target_view]);
var vpos_y = camera_get_view_y(view_camera[target_view]);
var vpos_w = camera_get_view_width(view_camera[target_view]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[target_view]) * 0.5;

//Interpolate the view position to the new, relative position.
var new_x = lerp(vpos_x, obj_camera.x - vpos_w, rate);
var new_y = lerp(vpos_y, obj_camera.y - vpos_h, rate);

//Update the view position
camera_set_view_pos(view_camera[target_view], new_x, new_y);