///make_level(level number)
var levelno = argument0;

//build the next level
with(room_maker){
    with(level[levelno]){
        build_level();
    }
}
