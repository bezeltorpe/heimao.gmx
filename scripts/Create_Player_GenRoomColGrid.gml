///create_player_GenRoomColGrid();

//var tileIndex;
//var tileRealX, tileRealY;
//var tileGridX, tileGridY;

gridWidth = room_width div 32;
gridHeight = room_height div 32;
tileTotal = gridWidth * gridHeight;
tileMax = tileTotal - 1;
tileColliderID = 30;

colGrid = ds_grid_create(gridWidth, gridHeight);

for (tileRealX=0; tileRealX <= room_width; tileRealX += 32;)
{
    for (tileRealY=0; tileRealY <= room_height; tileRealY += 32;)
    {
        tileIndex = tile_layer_find(-666, tileRealX, tileRealY);
        if (tile_exists(tileIndex))
        {
        tileColliderID = tile_get_background(tileIndex);
        }
        else
        {
        tileColliderID = 69;
        }
        //0: square, 1: LD, 2: RD, 3: RU, 4: LU

        tileGridX = tileRealX div gridWidth;
        tileGridY = tileRealY div gridHeight;

    ds_grid_add(colGrid, tileGridX, tileGridY, tileColliderID);
    }
}

/* THOUGHT SCRIBBLES

in original grid gen, ds_grid is generated with random values in it
this needs to go backwards, it needs to extrapolate tile information
and port it to a 2d array
which then creates the collision grid

things i have to work with: tile index, tile_get_x, tile_get_y
things i can do: multiply by 32 to get full dimensions of each tile
tile index starts at 0
i have no idea where x and y are for each tile
tileMax will always be divisible by room width and room height
tile indexes are numbered horizontally from the top left corner

simultaneously iterate on tileRealX and tileRealY

nest for loops
check vertically, then check horizontally (stripes loop)

END THOUGHT SCRIBBLES /*
