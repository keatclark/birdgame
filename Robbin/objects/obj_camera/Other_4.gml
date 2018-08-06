//Added thing for changing stuff
target_view = 0;

//Enable the use of views
view_enabled = true;
rate = 0.2;

//Make view 0 visible
view_set_visible(target_view, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(target_view, 480);
view_set_hport(target_view, 270);

//Resize and center
window_set_rectangle((display_get_width() - view_wport[target_view]) * 0.5, (display_get_height() - view_hport[target_view]) * 0.5, view_wport[target_view], view_hport[target_view]);
surface_resize(application_surface,view_wport[target_view],view_hport[target_view]);


//Camera creation

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(32, 32, 480, 270, 0, -1, -1, -1, 32, 32);

//Set view0 to use the camera "camera"
view_set_camera(target_view, camera);