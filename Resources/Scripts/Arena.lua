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
            Path = arenaFolder .. "/JudgeAtlas.png",
            TexCoord = {
                { 0, 0 }, { 127, 0 }, { 0, 127 }, { 127, 127 }
            },
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        }, 
        { 
            Path = arenaFolder .. "/JudgeAtlas.png",
            TexCoord = {
                { 128, 0 }, { 255, 0 }, { 128, 127 }, { 255, 127 }
            },
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        }, 
        { 
            Path = arenaFolder .. "/JudgeAtlas.png",
            TexCoord = {
                { 256, 0 }, { 383, 0 }, { 256, 127 }, { 383, 127 }
            },
            Position = { offset + 94, 360 },
            Size = { 128, 128 },
            AnchorPoint = { 0.5, 0.5 }, 
            Color = { 255, 255, 255 }
        }, 
        { 
            Path = arenaFolder .. "/JudgeAtlas.png",
            TexCoord = {
                { 384, 0 }, { 511, 0 }, { 384, 127 }, { 511, 127 }
            },
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
            Path = arenaFolder .. "/ComboNumAtlas.png",
            TexCoords = {
                { { 0, 0 }, { 50, 0 }, { 0, 81 }, { 50, 81 } },
                { { 51, 0 }, { 101, 0 }, { 51, 81 }, { 101, 81 } },
                { { 102, 0 }, { 152, 0 }, { 102, 81 }, { 152, 81 } },
                { { 153, 0 }, { 203, 0 }, { 153, 81 }, { 203, 81 } },
                { { 204, 0 }, { 254, 0 }, { 204, 81 }, { 254, 81 } },
                { { 255, 0 }, { 305, 0 }, { 255, 81 }, { 305, 81 } },
                { { 306, 0 }, { 356, 0 }, { 306, 81 }, { 356, 81 } },
                { { 357, 0 }, { 407, 0 }, { 357, 81 }, { 407, 81 } },
                { { 408, 0 }, { 458, 0 }, { 408, 81 }, { 458, 81 } },
                { { 459, 0 }, { 509, 0 }, { 459, 81 }, { 509, 81 } },
            },
            Position = { offset + 94, 194 },
            Size = { 51, 82 },
            MaxDigit = 99,
            Direction = Enum.NumericDirection.Mid,
            FillWithZero = false,
            Color = { 255, 255, 255 }
        }
    }
}

local DataSprite = {
    ["ComboLogo"] = {
        Path = arenaFolder .. "/ComboLogoAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 63, 0 }, { 0, 63 }, { 63, 63 } },
            { { 64, 0 }, { 127, 0 }, { 64, 63 }, { 127, 63 } },
            { { 128, 0 }, { 191, 0 }, { 128, 63 }, { 191, 63 } },
            { { 192, 0 }, { 255, 0 }, { 192, 63 }, { 255, 63 } },
            { { 256, 0 }, { 319, 0 }, { 256, 63 }, { 319, 63 } },
            { { 320, 0 }, { 383, 0 }, { 320, 63 }, { 383, 63 } }
        },
        Position = { offset + 96, 213 },
        Size = { 64, 64 },
        AnchorPoint = { 0.5, 1.0 },
        FrameTime = 18.0,
        Color = { 255, 255, 255 }
    },
    ["HitEffect"] = {
        Path = arenaFolder .. "/HitEffectAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 255, 0 }, { 0, 255 }, { 255, 255 } },
            { { 256, 0 }, { 511, 0 }, { 256, 255 }, { 511, 255 } },
            { { 512, 0 }, { 767, 0 }, { 512, 255 }, { 767, 255 } },
            { { 768, 0 }, { 1023, 0 }, { 768, 255 }, { 1023, 255 } },
            { { 0, 256 }, { 255, 256 }, { 0, 511 }, { 255, 511 } },
            { { 256, 256 }, { 511, 256 }, { 256, 511 }, { 511, 511 } },
            { { 512, 256 }, { 767, 256 }, { 512, 511 }, { 767, 511 } },
            { { 768, 256 }, { 1023, 256 }, { 768, 511 }, { 1023, 511 } },
            { { 0, 512 }, { 255, 512 }, { 0, 767 }, { 255, 767 } },
        },
        Position = { 0, 0 }, 
        Size = { 256, 256 },
        AnchorPoint = { 0.5, 0.45 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    },
    ["HoldEffect"] = {
        Path = arenaFolder .. "/HoldEffectAtlas.png",
        TexCoords = {
            { { 0, 0 }, { 255, 0 }, { 0, 255 }, { 255, 255 } },
            { { 256, 0 }, { 511, 0 }, { 256, 255 }, { 511, 255 } },
            { { 512, 0 }, { 767, 0 }, { 512, 255 }, { 767, 255 } }
        },
        Position = { 0, 0 },
        Size = { 256, 256 },
        AnchorPoint = { 0.5, 0.45 },
        FrameTime = 30.0,
        Color = { 255, 255, 255 }
    }
}

return {
    Type = Enum.HeaderType.Arena,
    Data = {
        [Enum.DataType.Position] = DataPositions,
        [Enum.DataType.Numeric] = DataNumerics,
        [Enum.DataType.Sprite] = DataSprite
    }
}