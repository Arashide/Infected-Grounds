// You can write your code in this editor

layer_set_visible("Map3", false);

global.DecoMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map3");

for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) {
		
		var tileMapData = tilemap_get(tileMap, tX, tY);

		var thisTile = [-1, 0];
		thisTile[TILE.DECOR_INDEX] = tileMapData;
		global.DecoMap[# tX, tY] = thisTile;
		
	}
	
}


