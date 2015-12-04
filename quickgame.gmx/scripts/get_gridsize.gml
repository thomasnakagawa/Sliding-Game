///get_gridsize(width,height)
//this script takes in the number of tiles wide and high the level is and returns the number of pixels the grid size should be.
var w = argument0;
var h = argument1;

var pixels_wide = room_width-90;
var pixels_high = room_height-90;
var xgrid = round(pixels_wide/w);
var ygrid = round(pixels_high/h);
var temp = min(xgrid,ygrid);
if(temp % 2 == 1) temp--;
return temp;