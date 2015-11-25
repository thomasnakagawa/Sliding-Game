///read_level()
for(var i = 0; i < height;i++)
{
    data[i] = "";
}
var ybegin = 999;
var xbegin = 999;
var xend = 0;
var yend = 0;
for(var i = 0; i < instance_number(base_piece); i++)
{
    var inst = instance_find(base_piece,i);
    xbegin = min(xbegin, inst.x);
    xend   = max(xend, inst.x);
    ybegin = min(ybegin, inst.y);
    yend   = max(yend, inst.y);
}
//
var spaceswidth = (32+xend - xbegin)/32;
var spacesheight = (32+yend - ybegin)/32;
for(var i = 0; i < spacesheight; i++){
    for(var j = 0; j < spaceswidth; j++){
        char = " ";
        var xpos = j*32 + xbegin;
        var ypos = i*32 + ybegin;
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
        data[i] += string(char);
    }//j
    show_debug_message(data[i]);
}//i


//make main string
var tempstr = "{" + chr(13) + chr(10);
for(var i = 0; i < spacesheight;i++)
{
    var curline = data[i];
    tempstr = tempstr + curline + chr(13) + chr(10);
}
tempstr += "}";
show_debug_message(tempstr);
clipboard_set_text(tempstr);