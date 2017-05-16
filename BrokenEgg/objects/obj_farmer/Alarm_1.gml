/// @description  End Picking Animation
if just_hit == 1    // if he has just been hit, 
    {              // variables were already changed by other alarm,
    just_hit = 0;   // so don't do anything
    }
else
    {
    picking = 0;
    searching = 0;
    }