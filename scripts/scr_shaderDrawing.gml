shader_set(shd_gbpalette);  

if surface_exists(gamescreen)
{
    surface_set_target(gamescreen);
    //view_surface_id[view_current] = gamescreen;
}
else
{
    gamescreen = surface_create(view_wview, view_hview);
    surface_set_target(gamescreen);
}

shader_appscreen = shader_get_uniform(shd_gbpalette, "texture");
shader_set_uniform_f(shader_appscreen, application_surface);

shader_palette = shader_get_uniform(shd_gbpalette, "palette");
shader_set_uniform_f(shader_palette, global.gamePalette);

shader_screenScale = shader_get_uniform(shd_gbpalette, "screenScale");  //float
shader_set_uniform_f(shader_screenScale, global.screenScale);

shader_screenX = shader_get_uniform(shd_gbpalette, "screenX");
shader_set_uniform_f(shader_screenX, global.screenX);

shader_screenY = shader_get_uniform(shd_gbpalette, "screenY");
shader_set_uniform_f(shader_screenY, global.screenY);

draw_clear_alpha(c_white, 0);
draw_surface(application_surface, view_xview, view_yview);

surface_reset_target();
shader_reset();
draw_surface(gamescreen, 0, 0);
