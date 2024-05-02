// You can write your code in this editor

layer_set_visible("Map2", false);

global.HeightMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map2");

for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) {
		
		var tileMapData = tilemap_get(tileMap, tX, tY);

		var thisTile = [-1, 0];
		thisTile[TILE.HEIGHT] = tileMapData + 1;
		global.HeightMap[# tX, tY] = thisTile;
		
	}
	
}


