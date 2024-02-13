local path = Game:GetSkinPath();

local DataNumerics = {
    ["Score"] = {
        {
            Path = path .. "ScoreFontAtlas.png",
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
            Position = { 0, 0 },
            Size = { 17, 17 },
            MaxDigit = 100,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    },
    ["Stats"] = {
        {
            Path = path .. "NumFontAtlas.png",
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
            Position = { 0, 0 },
            Size = { 17, 17 },
            MaxDigit = 6,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    }
}

local DataRects = {
    ["Back"] = {  
        { Position = { 714, 567 }, Size = { 86, 33 } } 
    }
}

local DataSprite = {
    ["BackHoverButton"] = {
        Path = path .. "BackHoverButton.png",
        TexCoords = {
            { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            { { 0, 0 }, { 85, 0 }, { 0, 32 }, { 85, 32 } }
        },
        Position = { 714, 567 },
        Size = { 86, 33 },
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    },
    ["WinLose"] = {
        Path = path .. "WinLoseAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 657, 0 }, { 0, 55 }, { 657, 55 } },
            { { 0, 56 }, { 657, 56 }, { 0, 111 }, { 657, 111 } }
        },
        Position = { 74, 177 },
        Size = { 658, 56 },
        AnchorPoint = { 0, 0 },
        Color = { 255, 255, 255 }
    }
}

local DataPositions = {
    ["Result"] = {
        {
            Path = path .. "Result.png",
            Position = { 0, 0 },
            Size = { 800, 600 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Score"] = {
        {
            Path = "",
            Position = { 400, 85 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsCool"] = {
        {
            Path = "",
            TexCoord = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            Position = { 182, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsGood"] = {
        {
            Path = "",
            TexCoord = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            Position = { 270, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsBad"] = {
        {
            Path = "",
            TexCoord = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            Position = { 355, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsMiss"] = {
        {
            Path = "",
            TexCoord = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            Position = { 444, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsMaxCombo"] = {
        {
            Path = "",
            TexCoord = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            Position = { 531, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsMaxJam"] = {
        {
            Path = "",
            TexCoord = { { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 } },
            Position = { 618, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    }
}

return {
    Type = Enum.HeaderType.Result,
    Data = {
        [Enum.DataType.Position] = DataPositions,
        [Enum.DataType.Numeric] = DataNumerics,
        [Enum.DataType.Rect] = DataRects,
        [Enum.DataType.Sprite] = DataSprite
    }
}