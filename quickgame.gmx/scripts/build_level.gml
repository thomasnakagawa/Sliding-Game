///build_level()
/////
////
//      this only ever needs to be called from make_level()!!!!
////
/////
var xbor = ((room_width-(width*32))/2);
var ybor = ((room_height-(height*32))/2);
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
                instance_create(xbor + j*32, ybor + i*32,obj_tile);
                break;
            case "w":
                instance_create(xbor + j*32, ybor + i*32,obj_wall);
                break;
            case "E":
                instance_create(xbor + j*32, ybor + i*32,obj_key);
                break;
            case "P":
                instance_create(xbor + j*32, ybor + i*32,obj_player);
                break;
            default:
                break;
        }
    }
}
//instance_destroy();
