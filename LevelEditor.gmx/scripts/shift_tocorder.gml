var instx = noone;
var insty = noone;
var xmin = 999;
var ymin = 999;
for(var i = 0; i < instance_number(base_piece); i++)
{
    var tempinst = instance_find(base_piece,i);
    if(tempinst.x < xmin)
    {
        instx = tempinst;
        xmin = tempinst.x;
    }   
    if(tempinst.y < ymin)
    {
        insty = tempinst;
        ymin = tempinst.y;
    }  
}
//indexinst is now properly defined
while(instx.x > 0)   shift_all(-32,0);
while(insty.y > 64)  shift_all(0,-32);