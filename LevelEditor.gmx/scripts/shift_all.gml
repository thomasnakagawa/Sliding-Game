///shift_all(x,y)
for(var i = 0; i < instance_number(base_piece); i++)
{
    with(instance_find(base_piece,i))
    {
        x += argument0;
        y += argument1;
    }
}