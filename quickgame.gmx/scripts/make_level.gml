///make_level(level number)
var levelno = argument0;

//build the next level
with(room_maker){
    with(level[levelno]){
        var g = get_gridsize(width,height);
        game.hgrid = g; game.vgrid = g;
        build_level(g);
    }
}