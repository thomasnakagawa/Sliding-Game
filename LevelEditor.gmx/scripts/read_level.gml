///read_level()
var ybegin = 64;
var xbegin = 0;

for(var i = 0; i < width; i++){
    for(var j = 0; j < height; j++){
        char = " ";
        var xpos = i*32 + xbegin;
        var ypos = j*32 + ybegin;
        if(position_meeting(xpos,ypos,base_piece))
        {
            switch(instance_position(xpos,ypos,base_piece).object_index)
            {
                case obj_player:
                    char = "P";
                    break;
                case obj_key:
                    char = "E";
                    break;
                case obj_tile:
                    char = "t";
                    break;
                case obj_wall:
                    char = "w";
                    break;
                default:
                    break;
            }     
        }//if meeting obj
        data[i,j] = string(char);
    }//j
}//i

//make main string
var tempstr = "{" + chr(13) + chr(10);
for(var i = 0; i < height;i++)
{
    var curline = "";
    var whitespaceonly = true;
    for(var j = 0; j < width; j++)
    {
        if(data[j,i] != " ") whitespaceonly = false;
        curline += string(data[j,i]);
    }
    if(!whitespaceonly) tempstr = tempstr + curline + chr(13) + chr(10);
}
tempstr += "}";
show_debug_message(tempstr);
clipboard_set_text(tempstr);
