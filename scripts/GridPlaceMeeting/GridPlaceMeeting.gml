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

var xE = global.HeightMap[# ScreenToTileX(x - 8, y), ScreenToTileY(x - 8, y)]
var yE = global.HeightMap[# ScreenToTileX(x, y + 4), ScreenToTileY(x, y + 4)]

var xF = global.HeightMap[# ScreenToTileX(xx, yy), ScreenToTileY(xx, yy)]




// Check for X meeting
//var x_meeting = (global.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT]!= FLOOR) || 
//				(global.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

var x_meeting = (xD[TILE.HEIGHT] != 1) ||
				(yD[TILE.HEIGHT] != 1);
				
// Check for Y meeting
var y_meeting = (xE[TILE.HEIGHT] != 1) ||
				(yE[TILE.HEIGHT]!= 1);

// Check for Center Meeting
var center_meeting = (xF[TILE.HEIGHT] != 1);

// Move back
x = xp;
y = yp;

// Return true or false;
return (x_meeting || y_meeting || center_meeting);
}