/// SurfaceSafetyCheck(id, w, h);

var pid, pw, ph, rv;

pid = argument0;
pw  = argument1;
ph  = argument2;
rv  = pid;

if (!surface_exists(pid)) {
    rv = surface_create(pw, ph);
    
    // Clear new surface
    surface_set_target(rv);
        draw_clear_alpha(c_black, 0);
    surface_reset_target();    
}

return (rv);
