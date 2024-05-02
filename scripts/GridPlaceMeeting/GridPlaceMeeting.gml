// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GridPlaceMeeting(){
var xx = argument[0];
var yy = argument[1];

var xp = x;
var yp = y;

x = xx;
y = yy;


var xD = global.HeightMap[# ScreenToTileX(x + 8, y), ScreenToTileY(x + 8, y)]
var yD = global.HeightMap[# ScreenToTileX(x, y - 4), ScreenToTileY(x, y - 4)]

var xA = global.DecoMap[# ScreenToTileX(x + 8, y), ScreenToTileY(x + 8, y)]
var yA = global.DecoMap[# ScreenToTileX(x, y - 4), ScreenToTileY(x, y - 4)]

var xE = global.HeightMap[# ScreenToTileX(x - 8, y), ScreenToTileY(x - 8, y)]
var yE = global.HeightMap[# ScreenToTileX(x, y + 8), ScreenToTileY(x, y + 8)]

var xB = global.DecoMap[# ScreenToTileX(x - 8, y), ScreenToTileY(x - 8, y)]
var yB = global.DecoMap[# ScreenToTileX(x, y + 8), ScreenToTileY(x, y + 8)]

var xF = global.HeightMap[# ScreenToTileX(xx, yy), ScreenToTileY(xx, yy)]
var xC = global.DecoMap[# ScreenToTileX(xx, yy), ScreenToTileY(xx, yy)]


// Check for X meeting
//var x_meeting = (global.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT]!= FLOOR) || 
//				(global.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

var x_meeting = (xD[TILE.HEIGHT] != 1) || (yD[TILE.HEIGHT] != 1); // || (xA[TILE.DECOR_INDEX] != 10) || (yA[TILE.DECOR_INDEX] != 10);
				
				
				
// Check for Y meeting
var y_meeting = (xE[TILE.HEIGHT] != 1) || (yE[TILE.HEIGHT]!= 1); // || (xB[TILE.DECOR_INDEX] != 10) || (yB[TILE.DECOR_INDEX] != 10);

// Check for Center Meeting
var center_meeting = (xF[TILE.HEIGHT] != 1); // || (xC[TILE.DECOR_INDEX] != 10);

// Move back
x = xp;
y = yp;

// Return true or false;
return (x_meeting || y_meeting || center_meeting);
}