global.dir2 = 0;
global.steps = 0;
global.startsteps = false;


DissolveAmount = 0.01;
col1 = make_color_rgb(0.8*255,0,0);
col2 = make_color_rgb(255,0.55*255,0);

//Call this once in your object before using the shader script
col1 = make_color_rgb(0.8*255,0,0);
col2 = make_color_rgb(255,0.55*255,0);
DissolveSettings(sDissolve2,0,col1,col2,0.2)
global.setdissolve = false;

depth = -1000;
x = TileToScreenX(x / TILE_W, y / TILE_W ) + 250;
y = TileToScreenY(x / TILE_W, y / TILE_W ) + 250;