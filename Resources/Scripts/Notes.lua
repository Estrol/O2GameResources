local keyCount = Game:GetKeyCount();
local skinPath = Game:GetSkinPath();

local DataNote = {
    ["NoteTrailUp"] = {
        Files = {
            skinPath .. "TrailUp0.png"
        },
        Size = { 1, 15 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    },
    ["NoteTrailDown"] = {
        Files = {
            skinPath .. "TrailDown0.png"
        },
        Size = { 1, 15 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    }
}

local noteFiles = {
    "white-note",
    "blue-note",
    "white-note",
    "yellow-note",
    "white-note",
    "blue-note",
    "white-note"
}

local holdFiles = {
    "white-hold",
    "blue-hold",
    "white-hold",
    "yellow-hold",
    "white-hold",
    "blue-hold",
    "white-hold",
}

local laneSize = {
    28, 22, 28, 32, 28, 22, 28 
}

for i=1, keyCount do
    DataNote["LaneHit" .. tostring(i - 1)] = {
        Files = {},
        Size = { laneSize[i], 7 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    }
    DataNote["LaneHold" .. tostring(i - 1)] = {
        Files = {},
        Size = { laneSize[i], 1 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    }

    for j=1, 3 do
        table.insert(DataNote["LaneHit" .. tostring(i - 1)].Files, skinPath .. noteFiles[i] .. tostring(j - 1) .. ".png");
        table.insert(DataNote["LaneHold" .. tostring(i - 1)].Files, skinPath .. holdFiles[i] .. tostring(j - 1) .. ".png");
    end
end

return {
    Type = Enum.HeaderType.Playing,
    Data = {
        [Enum.DataType.Note] = DataNote,
    }
}