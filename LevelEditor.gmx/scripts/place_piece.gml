var xspot = argument0;
var yspot = argument1;
if(!position_meeting(xspot,yspot,base_piece))
{
    switch(cursor)
    {
        case 1:
            instance_create(xspot,yspot,obj_player);
            break;
        case 2:
            instance_create(xspot,yspot,obj_tile);
            break;
        case 3:
            instance_create(xspot,yspot,obj_wall);
            break;
        case 4:
            instance_create(xspot,yspot,obj_key);
            break;
        default:
            break;
    }
}