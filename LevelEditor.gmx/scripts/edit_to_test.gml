///edit_to_test()
with(base_testers){
    instance_destroy();
}
with(base_piece){
    if(object_index == obj_tile) instance_create(x,y,obj_test_tile);
    else if(object_index == obj_player) instance_create(x,y,obj_test_player);
    else if(object_index == obj_key) instance_create(x,y,obj_test_key);
    else if(object_index == obj_wall) instance_create(x,y,obj_test_wall);
    visible = false;
}
