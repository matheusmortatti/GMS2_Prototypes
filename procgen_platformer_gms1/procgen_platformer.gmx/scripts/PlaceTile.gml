/// PlaceTile(x, y, val)

var xx  = argument[0];
var yy  = argument[1];
var val = argument[2];

var tile = irandom(3);

// Solid Block
if(val == 1) {
    tile_add(tile_plat, TILE_WIDTH * tile, 0, TILE_WIDTH, TILE_HEIGHT, xx, yy, 0);
    instance_create(xx, yy, oBlock);
}
// Chance of Spike
else if(val == 2) {
     var odds = random(1);
    if(odds > 0.5) {
        instance_create(xx, yy, oSpike);
    }
}
// Chance of Enemy
else if(val == 3) {
    // To be Created
}
// Chance of Block
else if(val == 4) {
    var odds = random(1);
    if(odds > 0.5) {
        tile_add(tile_plat, TILE_WIDTH * tile, 0, TILE_WIDTH, TILE_HEIGHT, xx, yy, 0);
        instance_create(xx, yy, oBlock);
    }
}
else if(val == 7) {
    instance_create(xx, yy, oBlockDestructable);
}
else if(val == 8) {
    
}
else if(val == 9) {
    
}
