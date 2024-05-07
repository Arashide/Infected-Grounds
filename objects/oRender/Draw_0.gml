var heightData, tileData, screenX, screenY, height, tileIndex, tileZ, decoData, decoIndex;
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);


//var cw = gpu_get_colorwriteenable();
//cw[3] = false;

var checkheightData = global.HeightMap[# ScreenToTileX(x,y), ScreenToTileY(x, y)];
var currentheightdata = checkheightData[TILE.HEIGHT] - 1;

gpu_set_depth(-10000);

// if (currentheightdata > 0 and y > 
draw_self();
gpu_set_depth(500);
//gpu_set_ztestenable(false);
//gpu_set_zwriteenable(false);


for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) 
	{
		
		tileData = global.theMap[# tX, tY];
		heightData = global.HeightMap[# tX, tY];
		decoData = global.DecoMap[# tX, tY];
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		var _depth = gpu_get_depth();
		
		tileIndex = tileData[TILE.SPRITE];
		height = heightData[TILE.HEIGHT] - 1;
		decoIndex = decoData[TILE.DECOR_INDEX];
		tileZ = tileData[TILE.Z];
		
	//	if (ScreenToTileX(mouse_x, mouse_y) == tX) && ((ScreenToTileY(mouse_x, mouse_y) == tY)) {
		//	tileIndex = 2;
	//		tileZ += 2;
//	show_debug_message(tY);


		if (tileIndex != 0) {
			//gpu_set_depth(-10000);
		
			for (var draw_height = 0; draw_height <= height; draw_height++) {
				if (height > 0 and ScreenToTileY(x,y - 15) < tY and draw_height > 0) {gpu_set_depth(-10000);}
				else {
					gpu_set_depth(5000);
					}
				
				var rgb_value = 150 + (draw_height * 10);
				var col = make_color_rgb(rgb_value, rgb_value, rgb_value);
				
	
				draw_sprite_ext(sStatic, tileIndex - 1, screenX, (screenY + tileZ)  - ((draw_height) * (TILE_H)), 1, 1, 0, col, 1);
			
				if (draw_height == height) && (decoIndex != 0) && (decoIndex != 10) {
					draw_sprite_ext(sDeco, decoIndex, screenX, (screenY + tileZ - 16)  - (draw_height * (TILE_H)), 1, 1, 0, col, 1);
				}
				
				else if (draw_height == height) && (decoIndex == 10) {
					draw_sprite_ext(sTree, -1, screenX, (screenY + tileZ - 120)  - (draw_height * (TILE_H)), 1, 1, 0, col, 1);
				}
				
			}	
			
		}
		
	}
	
}


//gpu_set_depth(10000);
//draw_self();

