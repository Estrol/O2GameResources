local path = Game:GetSkinPath();

local DataNumerics = {
    ["Score"] = {
        {
            Files = {},
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
            Files = {},
            Position = { 0, 0 },
            Size = { 17, 17 },
            MaxDigit = 6,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    }
}

for i=1, 10 do
    table.insert(DataNumerics["Score"][1].Files, path .. "ScoreFont/Frame" .. tostring(i - 1) .. ".png")
    table.insert(DataNumerics["Stats"][1].Files, path .. "NumFont/Frame" .. tostring(i - 1) .. ".png")
end

local DataRects = {
    ["Back"] = {  
        { Position = { 714, 567 }, Size = { 86, 33 } } 
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
    ["BackHoverOff"] = {
        {
            Path = path .. "BackHoverOff.png",
            Position = { 714, 566 },
            Size = { 87, 34 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["BackHoverOn"] = {
        {
            Path = path .. "BackHoverOn.png",
            Position = { 714, 566 },
            Size = { 87, 34 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Win"] = {
        {
            Path = path .. "WinLose/Win.png",
            Position = { 74, 177 },
            Size = { 658, 56 },
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Lose"] = {
        {   
            Path = path .. "WinLose/Lose.png",
            Position = { 74, 177 },
            Size = { 658, 56 },
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
            Position = { 182, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsGood"] = {
        {
            Path = "",
            Position = { 270, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsBad"] = {
        {
            Path = "",
            Position = { 355, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsMiss"] = {
        {
            Path = "",
            Position = { 444, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsMaxCombo"] = {
        {
            Path = "",
            Position = { 531, 142 },
            Size = { 0, 0 },
            AnchorPoint = { 0, 0.5 },
            Color = { 255, 255, 255 }
        }
    },
    ["StatsMaxJam"] = {
        {
            Path = "",
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
    }
}