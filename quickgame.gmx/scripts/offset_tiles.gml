///offset_tiles()
//what this script does is give a little bit of a random/natural feel to the platforms.
//it offsets the position of them by just a little bit so that a line of tiles has raged edges.
for(var i = 0; i < instance_number(base_plat);i++){
    //check if there is a tile above or below. If so, then don't give it a verticle offset.
    var tile = instance_find(base_plat,i);
    
    if(position_meeting(tile.x,tile.y+game.vgrid,base_plat) || position_meeting(tile.x,tile.y-game.vgrid,base_plat)){
    }else{
        tile.offset_y = irandom_range(-1,1);
        //with(tile) instance_destroy();
    }
    
    if(position_meeting(tile.x + game.hgrid,tile.y,base_plat) || position_meeting(tile.x - game.hgrid,tile.y,base_plat)){
    }else{
        tile.offset_x = irandom_range(-1,1);
        //with(tile) instance_destroy();
    }
}