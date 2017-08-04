/// SurfaceReset(id, col);

var pid = argument0;
   
surface_set_target(pid);
    draw_clear_alpha(argument1, 1);
surface_reset_target(); 
