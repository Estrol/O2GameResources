local offset = Game:GetLaneOffset();
local keyCount = Game:GetKeyCount();
local skinPath = Game:GetSkinPath();

local KeyButtonOffset = {
    0, 27, 40, 69, 111, 139, 153
}

local keyButtonSize = {
    { 36, 45 },
    { 22, 39 },
    { 38, 45 },
    { 51, 44 },
    { 37, 45 },
    { 22, 39 },
    { 36, 45 }
};

local KeyLightingOffset = {
    0, 27.75, 50, 78, 110, 137.75, 160
}

local KeyLightingSize = {
    { 28, 480 },
    { 22, 480 },
    { 28, 480 },
    { 32, 480 },
    { 28, 480 },
    { 22, 480 },
    { 28, 480 },
}

local PillYOffset = {
    463, 414, 365, 316, 267
}

local PillSize = { 12, 49 }

local DataPositions = {
    ["KeyButton"] = {},
    ["KeyLighting"] = {},
    ["JamGauge"] = {
        {
            Path = skinPath .. "JamGauge.png",
            Position = { offset, 538 },
            Size = { 186, 16 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["HealthBar"] = {
        {
            Path = skinPath .. "LifeBar0.png",
            Position = { offset + 800, 60 },
            Size = { 8, 243 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Pill"] = {},
    ["ExitButton"] = {
        {
            Path = skinPath .. "Exit.png",
            Position = { 740, 540 },
            Size = { 53, 56 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["WaveGage"] = {
        {
            Path = skinPath .. "WaveGage.png",
            Position = { 0, 597 },
            Size = { 800, 3 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Playfield"] = {
        {
            Path = skinPath .. "Playfield.png",
            Position = { offset - 35, 0 },
            Size = { 256, 600 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Title"] = {
        {
            Path = "",
            Position = { 572, 22 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Playfooter"] = {
        {
            Path = skinPath .. "PlayfieldFooter.png",
            Position = { 568, 8 },
            Size = { 232, 592 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["MeasureLine"] = {
        {
            Path = skinPath .. "MeasureLine.png",
            Position = { 0, 0 },
            Size = { 0, 0 }, -- TODO: fix
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["TopRow"] = {
        {
            Path = skinPath .. "Result/TopRow.png",
            Position = { 0, -196 },
            Size = { 800, 196 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["BottomRow"] = {
        {
            Path = skinPath .. "Result/BottomRow.png",
            Position = { 0, 196 + 404 },
            Size = { 800, 404 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    }
}

for i=1, 7 do
    table.insert(DataPositions["KeyButton"], {
        Path = skinPath .. "KeyButton" .. tostring(i - 1) .. ".png",
        Position = { offset + KeyButtonOffset[i], 486 },
        Size = keyButtonSize[i],
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    });

    table.insert(DataPositions["KeyLighting"], {
        Path = skinPath .. "KeyLighting" .. tostring(i - 1) .. ".png",
        Position = { offset + KeyLightingOffset[i], 486 },
        Size = KeyLightingSize[i],
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    });
end

for i=1, 5 do
    table.insert(DataPositions["Pill"], {
        Path = skinPath .. "Pill" .. tostring(i - 1) .. ".png",
        Position = { offset - 19, PillYOffset[i] },
        Size = PillSize,
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    });
end

local DataNumerics = {
    ["Score"] = {
        {
            Files = {},
            X = offset + 183,
            Y = 566,
            Position = { offset + 183, 566 },
            Size = { 17, 17 },
            MaxDigit = 99,
            Direction = Enum.NumericDirection.Left,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    },
    ["Jam"] = {
        {
            Files = {},
            Position = { offset + 94, 120 },
            Size = { 32, 38 },
            MaxDigit = 99,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    },
    ["LongNoteCombo"] = {
        {
            Files = {},
            Position = { offset + 94, 300 },
            Size = { 16, 32 },
            MaxDigit = 99,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    },
    ["Stats"] = {},
    ["Minute"] = {
        {
            Files = {},
            Position = { 725, 46 },
            Size = { 27, 21 },
            MaxDigit = 99,
            Direction = Enum.NumericDirection.Left,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    },
    ["Second"] = {
        {
            Files = {},
            Position = { 792, 46 },
            Size = { 27, 21 },
            MaxDigit = 2,
            Direction = Enum.NumericDirection.Left,
            FillWithZero = true,
            Color = { 255, 255, 255 }
        }
    }
}

for i=1, 10 do
    table.insert(DataNumerics["Score"][1].Files, skinPath .. "ScoreNum" .. tostring(i - 1)  .. ".png");
    table.insert(DataNumerics["Jam"][1].Files, skinPath .. "JamNum" .. tostring(i - 1)  .. ".png");
    table.insert(DataNumerics["LongNoteCombo"][1].Files, skinPath .. "LongNoteNum" .. tostring(i - 1)  .. ".png");
end

local StatsYOffset = {
    96, 107, 118, 129, 84
}

for i=1, 5 do
    table.insert(DataNumerics["Stats"], {
        Files = {},
        Position = { 792, StatsYOffset[i] },
        Size = { 9, 9 },
        MaxDigit = 99,
        Direction = Enum.NumericDirection.Left,
        FillWithZero = false,
        Color = { 255, 255, 255 }
    });

    for j=1, 10 do
        table.insert(DataNumerics["Stats"][i].Files, skinPath .. "StatsNum" .. tostring(j - 1)  .. ".png");
    end
end

for i=1, 10 do
    table.insert(DataNumerics["Minute"][1].Files, skinPath .. "PlayTimeNum" .. tostring(i - 1)  .. ".png");
    table.insert(DataNumerics["Second"][1].Files, skinPath .. "PlayTimeNum" .. tostring(i - 1)  .. ".png");
end

local DataSprite = {
    ["JamLogo"] = {
        Files = {},
        Position = { offset + 94, 102 },
        Size = { 60, 17 },
        AnchorPoint = { 0.5, 0.5 },
        FrameTime = 13.33,
        Color = { 255, 255, 255 }
    },
    ["LifeBar"] = {
        Files = {
            skinPath .. "LifeBar0.png"
        },
        Position = { offset + 198, 267 },
        Size = { 8, 243 },
        AnchorPoint = { 0, 0 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    },
    ["LongNoteLogo"] = {
        Files = {},
        Position = { offset + 94, 290 },
        Size = { 128, 128 },
        AnchorPoint = { 0.5, 0.5 },
        FrameTime = 60.0,
        Color = { 255, 255, 255 }
    },
    ["TargetBar"] = {
        Files = {},
        Position = { offset, 408 },
        Size = { 188, 73 },
        AnchorPoint = { 0, 0 },
        FrameTime = 5.0,
        Color = { 255, 255, 255 }
    }
}

for i=1, 8 do
    table.insert(DataSprite["JamLogo"].Files, skinPath .. "JamLogo" .. tostring(i - 1)  .. ".png");
end

for i=1, 2 do
    table.insert(DataSprite["LongNoteLogo"].Files, skinPath .. "LongNoteLogo" .. tostring(i - 1)  .. ".png");
end

for i=1, 2 do
    table.insert(DataSprite["TargetBar"].Files, skinPath .. "TargetBar" .. tostring(i - 1)  .. ".png");
end

local DataRects = {
    ["Exit"] = {  
        { Position = { 740, 540 }, Size = { 75, 59 } }
    },
    ["Title"] = {
        { Position = { 570, 21 }, Size = { 216, 15 } }
    }
}

local DataTweens = {
    ["TopRow"] = {
        Destination = { 0, 0 }, Type = Enum.TweenType.Linear, Duration = 1.5
    },
    ["BottomRow"] = {
        Destination = { 0, 196 }, Type = Enum.TweenType.Linear, Duration = 1.5
    }
}

return {
    Type = Enum.HeaderType.Playing,
    Data = {
        [Enum.DataType.Position] = DataPositions,
        [Enum.DataType.Numeric] = DataNumerics,
        [Enum.DataType.Sprite] = DataSprite,
        [Enum.DataType.Rect] = DataRects,
        [Enum.DataType.Tween] = DataTweens
    }
}