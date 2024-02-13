local offset = Game:GetLaneOffset();
local keyCount = Game:GetKeyCount();
local skinPath = Game:GetSkinPath();

local KeyButtonOffset = {
    0, 28, 40, 68, 111, 138, 151
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
            Position = { offset - 34, 0 },
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
            Path = skinPath .. "MeasureGuideLine.png",
            Position = { 0, 0 },
            Size = { 188, 3 },
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

local KeyButtonTexCoords = {
    { { 0, 0 }, { 35, 0 }, { 0, 44 }, { 35, 44 } },
    { { 36, 0 }, { 56, 0 }, { 36, 38 }, { 56, 38 } },
    { { 57, 0 }, { 93, 0 }, { 57, 44 }, { 93, 44 } },
    { { 94, 0 }, { 145, 0 }, { 94, 43 }, { 145, 43 } },
    { { 146, 0 }, { 181, 0 }, { 146, 44 }, { 181, 44 } },
    { { 182, 0 }, { 202, 0 }, { 182, 38 }, { 202, 38 } },
    { { 203, 0 }, { 238, 0 }, { 203, 44 }, { 238, 44 } }
}

local KeyLightingTexCoords = {
    { { 0, 0 }, { 27, 0 }, { 0, 479 }, { 27, 479 } }, -- Red lighting
    { { 28, 0 }, { 49, 0 }, { 28, 479 }, { 49, 479 } }, -- Blue Lighting
    { { 50, 0 }, { 81, 0 }, { 50, 479 }, { 81, 479 } } -- Yellow Lighting
}

local KeyIndex = {
    1, 2, 1, 3, 1, 2, 1
}

for i=1, 7 do
    table.insert(DataPositions["KeyButton"], {
        Path = skinPath .. "KeyButtonAtlas.png",
        TexCoord = KeyButtonTexCoords[i],
        Position = { offset + KeyButtonOffset[i], 486 },
        Size = keyButtonSize[i],
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    });

    table.insert(DataPositions["KeyLighting"], {
        Path = skinPath .. "KeyLightingAtlas.png",
        TexCoord = KeyLightingTexCoords[KeyIndex[i]],
        Position = { offset + KeyLightingOffset[i], 0 },
        Size = KeyLightingSize[i],
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    });
end

local PillsTexCoords = {
    { { 0, 0 }, { 11, 0 }, { 0, 48 }, { 11, 48 } },
    { { 12, 0 }, { 23, 0 }, { 12, 48 }, { 23, 48 } },
    { { 24, 0 }, { 35, 0 }, { 24, 48 }, { 35, 48 } },
    { { 36, 0 }, { 47, 0 }, { 36, 48 }, { 47, 48 } },
    { { 48, 0 }, { 59, 0 }, { 48, 48 }, { 59, 48 } }
}

local PillSize = { 12, 49 }

for i=1, 5 do
    table.insert(DataPositions["Pill"], {
        Path = skinPath .. "PillAtlas.png",
        TexCoord = PillsTexCoords[i],
        Position = { offset - 19, PillYOffset[i] },
        Size = PillSize,
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    });
end

local DataNumerics = {
    ["Score"] = {
        {
            Path = skinPath .. "ScoreNumAtlas.png",
            TexCoords = {
                { { 0, 0 }, { 16, 0 }, { 0, 16 }, { 16, 16 } },
                { { 17, 0 }, { 33, 0 }, { 17, 16 }, { 33, 16 } },
                { { 34, 0 }, { 50, 0 }, { 34, 16 }, { 50, 16 } },
                { { 51, 0 }, { 67, 0 }, { 51, 16 }, { 67, 16 } },
                { { 68, 0 }, { 84, 0 }, { 68, 16 }, { 84, 16 } },
                { { 85, 0 }, { 101, 0 }, { 85, 16 }, { 101, 16 } },
                { { 102, 0 }, { 118, 0 }, { 102, 16 }, { 118, 16 } },
                { { 119, 0 }, { 135, 0 }, { 119, 16 }, { 135, 16 } },
                { { 136, 0 }, { 152, 0 }, { 136, 16 }, { 152, 16 } },
                { { 153, 0 }, { 169, 0 }, { 153, 16 }, { 169, 16 } }
            },
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
            Path = skinPath .. "JamNumAtlas.png",
            TexCoords = {
                { { 0, 0 }, { 31, 0 }, { 0, 37 }, { 31, 37 } },
                { { 32, 0 }, { 63, 0 }, { 32, 37 }, { 63, 37 } },
                { { 64, 0 }, { 95, 0 }, { 64, 37 }, { 95, 37 } },
                { { 96, 0 }, { 127, 0 }, { 96, 37 }, { 127, 37 } },
                { { 128, 0 }, { 159, 0 }, { 128, 37 }, { 159, 37 } },
                { { 160, 0 }, { 191, 0 }, { 160, 37 }, { 191, 37 } },
                { { 192, 0 }, { 223, 0 }, { 192, 37 }, { 223, 37 } },
                { { 224, 0 }, { 255, 0 }, { 224, 37 }, { 255, 37 } },
                { { 256, 0 }, { 287, 0 }, { 256, 37 }, { 287, 37 } },
                { { 288, 0 }, { 319, 0 }, { 288, 37 }, { 319, 37 } }
            },
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
            Path = skinPath .. "LongNoteNumAtlas.png",
            TexCoords = {
                { { 0, 0 }, { 15, 0 }, { 0, 31 }, { 15, 31 } },
                { { 16, 0 }, { 31, 0 }, { 16, 31 }, { 31, 31 } },
                { { 32, 0 }, { 47, 0 }, { 32, 31 }, { 47, 31 } },
                { { 48, 0 }, { 63, 0 }, { 48, 31 }, { 63, 31 } },
                { { 64, 0 }, { 79, 0 }, { 64, 31 }, { 79, 31 } },
                { { 80, 0 }, { 95, 0 }, { 80, 31 }, { 95, 31 } },
                { { 96, 0 }, { 111, 0 }, { 96, 31 }, { 111, 31 } },
                { { 112, 0 }, { 127, 0 }, { 112, 31 }, { 127, 31 } },
                { { 128, 0 }, { 143, 0 }, { 128, 31 }, { 143, 31 } },
                { { 144, 0 }, { 159, 0 }, { 144, 31 }, { 159, 31 } }
            },
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
            Path = skinPath .. "PlayTimeNumAtlas.png",
            TexCoords = {
                { { 0, 0 }, { 26, 0 }, { 0, 20 }, { 26, 20 } },
                { { 27, 0 }, { 53, 0 }, { 27, 20 }, { 53, 20 } },
                { { 54, 0 }, { 80, 0 }, { 54, 20 }, { 80, 20 } },
                { { 81, 0 }, { 107, 0 }, { 81, 20 }, { 107, 20 } },
                { { 108, 0 }, { 134, 0 }, { 108, 20 }, { 134, 20 } },
                { { 135, 0 }, { 161, 0 }, { 135, 20 }, { 161, 20 } },
                { { 162, 0 }, { 188, 0 }, { 162, 20 }, { 188, 20 } },
                { { 189, 0 }, { 215, 0 }, { 189, 20 }, { 215, 20 } },
                { { 216, 0 }, { 242, 0 }, { 216, 20 }, { 242, 20 } },
                { { 243, 0 }, { 269, 0 }, { 243, 20 }, { 269, 20 } }
            },
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
            Path = skinPath .. "PlayTimeNumAtlas.png",
            TexCoords = {
                { { 0, 0 }, { 26, 0 }, { 0, 20 }, { 26, 20 } },
                { { 27, 0 }, { 53, 0 }, { 27, 20 }, { 53, 20 } },
                { { 54, 0 }, { 80, 0 }, { 54, 20 }, { 80, 20 } },
                { { 81, 0 }, { 107, 0 }, { 81, 20 }, { 107, 20 } },
                { { 108, 0 }, { 134, 0 }, { 108, 20 }, { 134, 20 } },
                { { 135, 0 }, { 161, 0 }, { 135, 20 }, { 161, 20 } },
                { { 162, 0 }, { 188, 0 }, { 162, 20 }, { 188, 20 } },
                { { 189, 0 }, { 215, 0 }, { 189, 20 }, { 215, 20 } },
                { { 216, 0 }, { 242, 0 }, { 216, 20 }, { 242, 20 } },
                { { 243, 0 }, { 269, 0 }, { 243, 20 }, { 269, 20 } }
            },
            Position = { 792, 46 },
            Size = { 27, 21 },
            MaxDigit = 2,
            Direction = Enum.NumericDirection.Left,
            FillWithZero = true,
            Color = { 255, 255, 255 }
        }
    }
}

local StatsYOffset = {
    96, 107, 118, 129, 84
}

for i=1, 5 do
    table.insert(DataNumerics["Stats"], {
        Path = skinPath .. "StatsNumAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 8, 0 }, { 0, 8 }, { 8, 8 } },
            { { 9, 0 }, { 17, 0 }, { 9, 8 }, { 17, 8 } },
            { { 18, 0 }, { 26, 0 }, { 18, 8 }, { 26, 8 } },
            { { 27, 0 }, { 35, 0 }, { 27, 8 }, { 35, 8 } },
            { { 36, 0 }, { 44, 0 }, { 36, 8 }, { 44, 8 } },
            { { 45, 0 }, { 53, 0 }, { 45, 8 }, { 53, 8 } },
            { { 54, 0 }, { 62, 0 }, { 54, 8 }, { 62, 8 } },
            { { 63, 0 }, { 71, 0 }, { 63, 8 }, { 71, 8 } },
            { { 72, 0 }, { 80, 0 }, { 72, 8 }, { 80, 8 } },
            { { 81, 0 }, { 89, 0 }, { 81, 8 }, { 89, 8 } }
        },
        Position = { 792, StatsYOffset[i] },
        Size = { 9, 9 },
        MaxDigit = 99,
        Direction = Enum.NumericDirection.Left,
        FillWithZero = false,
        Color = { 255, 255, 255 }
    });
end

local DataSprite = {
    ["JamLogo"] = {
        Path = skinPath .. "JamLogoAtlas.png",
        TexCoords = { 
            { { 0, 0 }, { 59, 0 }, { 0, 16 }, { 59, 16 } },
            { { 60, 0 }, { 118, 0 }, { 60, 16 }, { 118, 16 } },
            { { 120, 0 }, { 179, 0 }, { 120, 16 }, { 179, 16 } },
            { { 180, 0 }, { 240, 0 }, { 180, 16 }, { 240, 16 } },
            { { 241, 0 }, { 301, 0 }, { 241, 16 }, { 301, 16 } },
            { { 302, 0 }, { 362, 0 }, { 302, 16 }, { 362, 16 } },
            { { 363, 0 }, { 423, 0 }, { 363, 16 }, { 423, 16 } },
            { { 424, 0 }, { 484, 0 }, { 424, 16 }, { 484, 16 } }
        },
        Position = { offset + 94, 102 },
        Size = { 60, 17 },
        AnchorPoint = { 0.5, 0.5 },
        FrameTime = 13.33,
        Color = { 255, 255, 255 }
    },
    ["LifeBar"] = {
        Path = skinPath .. "LifeBar0.png",
        Position = { offset + 198, 267 },
        Size = { 8, 243 },
        AnchorPoint = { 0, 0 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    },
    ["LongNoteLogo"] = {
        Path = skinPath .. "LongNoteLogoAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 127, 0 }, { 0, 127 }, { 127, 127 } },
            { { 128, 0 }, { 255, 0 }, { 128, 127 }, { 255, 127 } }
        },
        Position = { offset + 94, 290 },
        Size = { 128, 128 },
        AnchorPoint = { 0.5, 0.5 },
        FrameTime = 60.0,
        Color = { 255, 255, 255 }
    },
    ["TargetBar"] = {
        Path = skinPath .. "TargetBarAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 187, 0 }, { 0, 72 }, { 187, 72 } },
            { { 188, 0 }, { 375, 0 }, { 188, 72 }, { 375, 72 } }
        },
        Position = { offset, 408 },
        Size = { 188, 73 },
        AnchorPoint = { 0, 0 },
        FrameTime = 5.0,
        Color = { 255, 255, 255 }
    }
}

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