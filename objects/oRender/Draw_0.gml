var heightData, tileData, screenX, screenY, height, tileIndex, tileZ, decoData, decoIndex;



for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) 
	{
		
		tileData = global.theMap[# tX, tY];
		heightData = global.HeightMap[# tX, tY];
		decoData = global.DecoMap[# tX, tY];
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		height = heightData[TILE.HEIGHT] - 1;
		decoIndex = decoData[TILE.DECOR_INDEX];
		tileZ = tileData[TILE.Z];
		
	//	if (ScreenToTileX(mouse_x, mouse_y) == tX) && ((ScreenToTileY(mouse_x, mouse_y) == tY)) {
		//	tileIndex = 2;
	//		tileZ += 2;

	
		if (tileIndex != 0) {
			draw_self();
			for (var draw_height = 0; draw_height <= height; draw_height++) {
				var rgb_value = 150 + (draw_height * 10);
				var col = make_color_rgb(rgb_value, rgb_value, rgb_value);
				
				
				
				draw_sprite_ext(sStatic, tileIndex - 1, screenX, (screenY + tileZ)  - (draw_height * (TILE_H)), 1, 1, 0, col, 1);
			
				if (draw_height == height) && (decoIndex != 0) && (decoIndex != 10) {
			
					draw_sprite_ext(sDeco, decoIndex, screenX, (screenY + tileZ - 16)  - (draw_height * (TILE_H)), 1, 1, 0, col, 1);
			
				}
				
				else if (draw_height == height) && (decoIndex == 10) {
					draw_sprite_ext(sTree, -1, screenX, (screenY + tileZ - 120)  - (draw_height * (TILE_H)), 1, 1, 0, col, 1);
				}
				
			}
			
		}
		
			if y < TileToScreenY(tX, tY) {
			
			}
	}
	
}

