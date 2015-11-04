if(place_meeting(x+32,y,base_wall)) b_right = true;
if(place_meeting(x-32,y,base_wall)) b_left = true;
if(place_meeting(x,y+32,base_wall)) b_below = true;
if(place_meeting(x,y-32,base_wall)) b_above = true;

if(place_meeting(x+64,y,base_wall)) h_right = true;
if(place_meeting(x-64,y,base_wall)) h_left = true;
if(place_meeting(x,y+64,base_wall)) h_below = true;
if(place_meeting(x,y-64,base_wall)) h_above = true;
