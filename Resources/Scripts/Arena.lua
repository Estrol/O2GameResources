local arenaIndex = Game:GetArenaIndex();
local offset = Game:GetLaneOffset();
local keyCount = Game:GetKeyCount();
local path = Game:GetSkinPath();

local arenaFolder = path .. tostring(arenaIndex);
if not Game:IsPathExist(arenaFolder) then
    arenaFolder = path .. "1";
end

local DataPositions = {
    ["PlayingBG"] = {
        { 
            Path = arenaFolder .. "/PlayingBG.png",
            Position = { 0, 0 },
            Size = { 800, 600 }, 
            AnchorPoint = { 0, 0 },
            Color = { 255, 255, 255 }
        }
    },
    ["Judge"] = { 
        { 
            Path = arenaFolder .. "/JudgeMiss.png", 
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        }, 
        { 
            Path = arenaFolder .. "/JudgeBad.png", 
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        }, 
        { 
            Path = arenaFolder .. "/JudgeGood.png", 
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        }, 
        { 
            Path = arenaFolder .. "/JudgeCool.png", 
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        } 
    }
}

local DataNumerics = {
    ["Combo"] = {
        { 
            Files = {},
            Position = { offset + 94, 194 },
            Size = { 51, 82 },
            MaxDigit = 99,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    }
}

for i=1, 10 do
    table.insert(DataNumerics["Combo"][1].Files, arenaFolder .. "/ComboNum" .. tostring(i - 1)  .. ".png");
end

local DataSprite = {
    ["ComboLogo"] = {
        Files = {},
        Position = { offset + 99, 213 },
        Size = { 64, 64 },
        AnchorPoint = { 0.5, 1.0 },
        FrameTime = 18.0,
        Color = { 255, 255, 255 }
    },
    ["HitEffect"] = {
        Files = {},
        Position = { 0, 0 }, 
        Size = { 256, 256 },
        AnchorPoint = { 0.5, 0.45 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    },
    ["HoldEffect"] = {
        Files = {},
        Position = { 0, 0 },
        Size = { 256, 256 },
        AnchorPoint = { 0.5, 0.45 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    }
}

for i=1, 6 do
    table.insert(DataSprite["ComboLogo"].Files, arenaFolder .. "/ComboLogo" .. tostring(i - 1)  .. ".png");
end

for i=1, 9 do
    table.insert(DataSprite["HitEffect"].Files, arenaFolder .. "/HitEffect" .. tostring(i - 1)  .. ".png");
end

for i=1, 3 do
    table.insert(DataSprite["HoldEffect"].Files, arenaFolder .. "/HoldEffect" .. tostring(i - 1)  .. ".png");
end

return {
    Type = Enum.HeaderType.Arena,
    Data = {
        [Enum.DataType.Position] = DataPositions,
        [Enum.DataType.Numeric] = DataNumerics,
        [Enum.DataType.Sprite] = DataSprite
    }
}