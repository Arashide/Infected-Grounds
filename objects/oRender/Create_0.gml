// You can write your code in this editor

layer_set_visible("Map", false);
x = TileToScreenX(32, 32);
y = TileToScreenY(32, 32);
global.dir = 0;


global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map");

for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) {
		
		var tileMapData = tilemap_get(tileMap, tX, tY);

		
		// Format: [Sprite, Z]
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 1;
		global.theMap[# tX, tY] = thisTile;
		
	}
	
}


