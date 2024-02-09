# Lua scripting for the Game's skinning

## Files
- `Arena.lua` - for game arena or background in-gameplay.
- `Playing.lua` - for gameplay image/skin
- `Notes.lua` - for notes (arrows) in-gameplay

Each file has have to return table with functions:
```lua
{
    type: HeaderType, -- see below
    init: Function<> -- function to initialize the object
}
```

The init function has to return table with following struct:
```lua
{
    [DataType] = {
        [DataName] = DataValue
    }
}
```

Where `DataType` and `HeaderType` like this:
```
Enum DataType {
    Main,
	MainMenu,
	Notes,
	Playing,
	SongSelect
}

Enum HeaderType {
    Numeric,
	Position,
	Rect,
	Note,
	Sprite,
	Tween
}
```

For each data format can be seen in example lua file in this folder

## API
The game provide some API to use in lua file:
```lua
Game::GetArenaIndex() -- return index of arena
Game::GetHitPosition() -- return lane Y position offset
Game::GetLaneOffset() -- return lane X position offset
Game::GetResolution() -- return game resolution (width, height)
Game::GetSkinPath() -- return path to skin folder
Game::GetKeyCount() -- return number of keys like 7 keys or 4 keys
```
