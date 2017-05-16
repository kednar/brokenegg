/// @description  Make the picked Egg Disappear
if global.farmer_hit == 0
    {
    with (nearest_egg)
        {
        instance_destroy();
        }
    }

