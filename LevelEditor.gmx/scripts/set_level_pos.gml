///set_level_pos
//this script uses and array of struct_level and determines the x and y coordinates that they should be
var xborder = (room_width-860)/2;
var yborder = 120;
var xgutter = 50;
var ygutter = 50;
var columns = 7;
for(var i = 0; i < num_levels; i++){
    level[i].x = xborder + (i % columns)*(80+xgutter);
    level[i].y = yborder + floor(i / columns)*(80+ygutter);
    level[i].number = i;
}
