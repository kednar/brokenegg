alarm[0] = fadeSpeed;
fadeAlpha += 0.05;
if fadeAlpha >= 1.0
    {
    global.faded_out = 1;
    global.fade_out = 0;
    instance_destroy();
    }

