alarm[0] = fadeSpeed;
fadeAlpha -= 0.05;
if fadeAlpha == 0
    {
    global.faded_in = 1;
    instance_destroy();
    }

