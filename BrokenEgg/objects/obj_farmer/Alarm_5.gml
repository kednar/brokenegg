/// @description  Add platform on farmer when dead
inst = instance_create(x,y+10,obj_platform);
object_set_visible((inst), true); // use for bugchecking
object_set_depth((inst),-200);
with (inst)
    {
    sprite_index = spr_platform;
    image_xscale = 3;
    image_yscale = 1;
    }

