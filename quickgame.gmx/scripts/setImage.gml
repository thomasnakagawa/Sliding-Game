///setImage(bool moving, string direction)
var isMoving  = argument0;
var dirString = argument1;

if(isMoving){
    log(" moving");
    switch(dirString){
        case "up":
            sprite_index = vec_slide_back;
            break;
        case "down":
            sprite_index = vec_slide_front;
            break;
        case "left":
            sprite_index = vec_slide_left;
            break;
        case "right":
            sprite_index = vec_slide_right;
            break;
        default:
            sprite_index = vec_slide_front;
            break;    
    }
}
if(!isMoving){
    log("not moving");
    switch(dirString){
        case "up":
            sprite_index = vec_stand_back;
            break;
        case "down":
            sprite_index = vec_stand_front;
            break;
        case "left":
            sprite_index = vec_stand_left;
            break;
        case "right":
            sprite_index = vec_stand_right;
            break;
        default:
            sprite_index = vec_stand_front;
            break; 
    }
}
