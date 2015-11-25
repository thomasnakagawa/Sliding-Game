//make the level again but dont make any particles
with(base_interact)
{
    exit_particle = false;
    instance_destroy();
}
with(room_maker){
    make_level(current_level);
}
