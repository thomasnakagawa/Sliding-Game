with(base_smallbutton) {instance_destroy();}
with(struct_level) {selected = false;}
selected = true;
obj_planner.selected = number;
var editbutton = instance_create(x,y+80,obj_smalleditbutton);
var backbutton = instance_create(x-15,y,obj_smallbackbutton);
var forebutton = instance_create(x+80,y,obj_smallforwardbutton);
var delebutton = instance_create(x+40,y+80,obj_smalldeletebutton);
