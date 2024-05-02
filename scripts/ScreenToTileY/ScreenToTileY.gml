// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenToTileY(_tX, _tY) {

var _screenX = (_tX - (SCREEN_W * 0.35));
var _screenY = (_tY - (SCREEN_H * 0.25));

return floor((_screenY / TILE_H -_screenX / TILE_W));
}