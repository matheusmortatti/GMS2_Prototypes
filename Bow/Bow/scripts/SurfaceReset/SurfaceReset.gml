/// SurfaceReset(id);

var pid = argument0;
   
surface_set_target(pid);
    draw_clear_alpha(c_black, 0);
surface_reset_target(); 
