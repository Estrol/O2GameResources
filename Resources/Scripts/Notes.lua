local keyCount = Game:GetKeyCount();
local skinPath = Game:GetSkinPath();
local offset = Game:GetLaneOffset();

local noteImagePath = skinPath .. "NoteImageAtlas.png";
local measureLinePath = skinPath .. "MeasureGuideLine0.png";

local noteImageSize = Game:GetImageSize(noteImagePath);
local measureLineSize = Game:GetImageSize(measureLinePath);

local DataSprite = {
    ["NoteTrailUp"] = {
        Path = noteImagePath,
        TexCoords = {
            {
                { 0, 87  }, { 4, 87  },
                { 0, 124 }, { 4, 124 }
            }
        },
        Position = { 0, 0 },
        Size = { 64, 64 },
        AnchorPoint = { 0.5, 1.0 },
        FrameTime = 18.0,
        Color = { 255, 255, 255 }
    },
    ["NoteTrailDown"] = {
        Path = noteImagePath,
        TexCoords = {
            { 
                { 10, 87  }, { 14, 87  },
                { 10, 124 }, { 14, 124 }
            }
        },
        Position = { 0, 0 },
        Size = { 64, 64 },
        AnchorPoint = { 0.5, 1.0 },
        FrameTime = 18.0,
        Color = { 255, 255, 255 }
    },
    ["MeasureLine"] = {
        Path = measureLinePath,
        Position = { 0, 0 },
        Size = { 188, 3 },
        AnchorPoint = { 0, 0 },
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

local noteImagesCoords = {
    ["white-note"] = {
        { { 142, 0 }, { 212, 0 }, { 142, 16 }, { 212, 16 } },
        { { 142, 20 }, { 212, 20 }, { 142, 36 }, { 212, 36 } },
        { { 142, 40 }, { 212, 40 }, { 142, 56 }, { 212, 56 } },
    },
    ["blue-note"] = {
        { { 0, 0 }, { 54, 0 }, { 0, 16 }, { 54, 16 } },
        { { 0, 20 }, { 54, 20 }, { 0, 36 }, { 54, 36} },
        { { 0, 40 }, { 54, 40 }, { 0, 56 }, { 54, 56 } }
    },
    ["yellow-note"] = {
        { { 57, 0 }, { 136, 0 }, { 57, 16 }, { 136, 16 } },
        { { 57, 20 }, { 136, 20 }, { 57, 36 }, { 136, 36 } },
        { { 57, 40 }, { 136, 40 }, { 57, 56 }, { 136, 56 } },
    },
    ["white-hold"] = {
        { { 142, 60 }, { 212, 60 }, { 142, 64 }, { 212, 64 } },
        { { 142, 70 }, { 212, 70 }, { 142, 74 }, { 212, 74 } },
        { { 142, 80 }, { 212, 80 }, { 142, 84 }, { 212, 84 } },
    },
    ["blue-hold"] = {
        { { 0, 60 }, { 54, 64 }, { 0, 60 }, { 54, 64 } },
        { { 0, 70 }, { 54, 74 }, { 0, 70 }, { 54, 74 } },
        { { 0, 80 }, { 54, 84 }, { 0, 80 }, { 54, 84 } },
    },
    ["yellow-hold"] = {
        { { 57, 60 }, { 136, 60 }, { 57, 64 }, { 136, 64 } },
        { { 57, 70 }, { 136, 70 }, { 57, 74 }, { 136, 74 } },
        { { 57, 80 }, { 136, 80 }, { 57, 84 }, { 136, 84 } },
    }
}

local laneSize = {
    28, 22, 28, 32, 28, 22, 28 
}

for i=1, keyCount do
    DataSprite["LaneHit" .. tostring(i - 1)] = {
        Path = noteImagePath,
        TexCoords = noteImagesCoords[noteFiles[i]],
        Position = { offset + 99, 213 },
        Size = { laneSize[i], 7 },
        AnchorPoint = { 0.5, 1.0 },
        FrameTime = 75.0,
        Color = { 255, 255, 255 }
    }

    DataSprite["LaneHold" .. tostring(i - 1)] = {
        Path = noteImagePath,
        TexCoords = noteImagesCoords[holdFiles[i]],
        Position = { offset + 99, 213 },
        Size = { laneSize[i], 2 },
        AnchorPoint = { 0.0, 0.0 },
        FrameTime = 75.0,
        Color = { 255, 255, 255 }
    }
end

return {
    Type = Enum.HeaderType.Playing,
    Data = {
        [Enum.DataType.Sprite] = DataSprite,
    }
}