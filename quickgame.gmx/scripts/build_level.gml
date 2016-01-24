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
        var xpos = floor(xbor + j*grid);
        var ypos = floor(ybor + i*grid);
        switch(c)
        {
            case " ":
                break;
            case "t":
                instance_create(xpos, ypos,obj_tile);
                break;
            case "w":
                instance_create(xpos, ypos,obj_wall);
                break;
            case "E":
                instance_create(xpos, ypos,obj_key);
                break;
            case "P":
                instance_create(xpos, ypos,obj_tile);
                instance_create(xpos, ypos,obj_player);
                break;
            case "p":
                instance_create(xpos, ypos,obj_wall);
                instance_create(xpos, ypos,obj_player);
                break;
            case "f":
                instance_create(xpos, ypos,obj_wall);
                instance_create(xpos, ypos,obj_follow);
                break;
            case "F":
                instance_create(xpos, ypos,obj_tile);
                instance_create(xpos, ypos,obj_follow);
                break;
            case "!":
                instance_create(xpos, ypos,obj_banner);
                break;
            default:
                break;
        }
    }
}
//offset_tiles();
