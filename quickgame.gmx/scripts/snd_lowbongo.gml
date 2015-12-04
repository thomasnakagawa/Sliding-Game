var rand = irandom_range(0,4);
    switch(rand)
    {
    case 0:
        audio_play_sound(snd_tile1,1,false);
        break;
    case 1:
        audio_play_sound(snd_tile2,1,false);
        break;
    case 2:
        audio_play_sound(snd_tile3,1,false);
        break;
    default:
        audio_play_sound(snd_tile1,1,false);
        break;
    }