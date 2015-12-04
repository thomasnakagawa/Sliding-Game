///build_level()
/////
////
//      this only ever needs to be called from make_level()!!!!
////
/////

var grid = argument0;
var xbor = ((-grid + room_width-(width*grid))/2);
var ybor = ((grid + room_height-(height*grid))/2);
log("building...");
//do everything
for(var i = 0; i < height;i++)
{
    for(var j = 1; j <= width; j++)
    {
        var c = string_char_at(data[i],j);
        switch(c)
        {
            case " ":
                break;
            case "t":
                instance_create(xbor + j*grid, ybor + i*grid,obj_tile);
                break;
            case "w":
                instance_create(xbor + j*grid, ybor + i*grid,obj_wall);
                break;
            case "E":
                instance_create(xbor + j*grid, ybor + i*grid,obj_key);
                break;
            case "P":
                instance_create(xbor + j*grid, ybor + i*grid,obj_tile);
                instance_create(xbor + j*grid, ybor + i*grid,obj_player);
                break;
            default:
                break;
        }
    }
}
//offset_tiles();
