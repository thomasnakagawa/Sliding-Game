//destroy any keys if they have been used
with(obj_key){
    if(been_used) instance_destroy();
}

//make all the remaining tiles and stuff swoop away
for(var i = 0; i < instance_number(base_interact); i++){
    var inst = instance_find(base_interact,i)
    var newswoop = instance_create(inst.x,inst.y,obj_swoop_away);
    newswoop.sprite_index = inst.sprite_index;
    newswoop.x_start = inst.y;
}
with(base_interact){
    exit_particle = false;
    instance_destroy();
}
