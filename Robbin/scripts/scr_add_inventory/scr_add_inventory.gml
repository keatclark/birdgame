//scr_add_inventory(gun ID);

var gun_id=argument[0];

ds_list_add(guns, gun_id);
ds_list_add(gun_max_ammo,global.data_gun_max[|gun_id]);
ds_list_add(gun_current_ammo,global.data_gun_max[|gun_id]);
ds_list_add(gun_current_clip,global.data_gun_clip[|gun_id]);
