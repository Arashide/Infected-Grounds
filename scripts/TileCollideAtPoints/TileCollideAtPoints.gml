function TileCollideAtPoints() {
	var tile_map_id = arguement[0];
	
	var found = false;
	
	var vector2_x = 0;
	var vector2_y = 1;
	
	for (var i=1; i < arguement_count; i++) {
		var point = arguement[1];
		found = found || tilemap_get_at_pixel(tile_map_id, point[vector2_x], point[vector2_y]);
	}
	
	return found;
	
	
};