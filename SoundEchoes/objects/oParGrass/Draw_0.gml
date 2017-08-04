DrawSpriteSkew(sprite_index, image_index, x, y, xskew, 0);

if(instance_exists(oSilhouetteController)) {
	surface_set_target(oSilhouetteController.surf);
	DrawSpriteSkewExt(sprite_index, image_index, x, y, 1, 1, 0, c_black, 0.5, xskew, 0);
	surface_reset_target();
}

