var rand = irandom_range(0,4);
switch(rand)
{
case 0:
    audio_play_sound(snd_fall1,1,false);
    break;
case 1:
    audio_play_sound(snd_fall2,1,false);
    break;
case 2:
    audio_play_sound(snd_fall3,1,false);
    break;
default:
    audio_play_sound(snd_fall1,1,false);
    break;
}