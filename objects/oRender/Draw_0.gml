var tileData, screenX, screenY, tileIndex, tileZ;

for (var tX = 31; tX > 0; tX--) {
	
	for (var tY = 0; tY < TILE_H; tY++) 
	{
		tileData = global.theMap[# tX, tY];
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if (tileIndex != 0) {
			draw_sprite(sStatic, tileIndex - 1, screenX, screenY + tileZ );
		}
	}
	
}