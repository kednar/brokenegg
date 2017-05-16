/// @description  Destroy all instances except farmer

with (obj_chicken){
    instance_destroy();
    }
with (obj_chick){
    instance_destroy();
    }
with (obj_egg){
    instance_destroy();
    }
with(obj_player){
    instance_destroy();
    }

/// Create Fade In, Unlock Ending

instance_create(0,0, obj_fade_in);

if global.gameover == 1
    {
    ending = 1;
    }

if global.gameover == 2
    {
    ending = 2;
    }


