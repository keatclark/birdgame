///scr_add_gun_database

///scr_add_gun_database(name, sprite, frames, bullet object, gun length, bullet speed, fure rate, reload time, max bullets, clip, spread, knockback, damage multiplier);

ds_list_add(global.data_gun_name,argument[0]);
ds_list_add(global.data_gun_image,argument[1]);
ds_list_add(global.data_gun_frames,argument[2]);
ds_list_add(global.data_gun_object,argument[3]);
ds_list_add(global.data_gun_length,argument[4]);
ds_list_add(global.data_gun_speed,argument[5]);
ds_list_add(global.data_gun_rate,argument[6]);
ds_list_add(global.data_gun_reload,argument[7]);
ds_list_add(global.data_gun_max,argument[8]);
ds_list_add(global.data_gun_clip,argument[9]);
ds_list_add(global.data_gun_spread,argument[10]);
ds_list_add(global.data_gun_knock,argument[11]);
ds_list_add(global.data_gun_damage,argument[12]);

