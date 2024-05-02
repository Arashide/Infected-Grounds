
function ScreenToTileX( _tX, _tY) {

var _screenX = (_tX - (SCREEN_W * 0.35));
var _screenY = (_tY - (SCREEN_H * 0.25));

return floor((_screenX / TILE_W +_screenY / TILE_H));

}