local init = function()
    local offset = Game:GetLaneOffset();

    return {
        -- Position Format: X, Y, ScaleX, ScaleY, R, G, B
        [DataType.Position] = {
            [7] = {
                ["KeyButton"] = {
                    { offset, 486, 0, 0, 255, 255, 255 }, -- Lane 1
                    { offset + 27, 486, 0, 0, 255, 255, 255 }, -- Lane 2
                    { offset + 40, 486, 0, 0, 255, 255, 255 }, -- Lane 3
                    { offset + 69, 486, 0, 0, 255, 255, 255 }, -- Lane 4
                    { offset + 111, 486, 0, 0, 255, 255, 255 }, -- Lane 5
                    { offset + 139, 486, 0, 0, 255, 255, 255 }, -- Lane 6
                    { offset + 153, 486, 0, 0, 255, 255, 255 } -- Lane 7
                },
                ["KeyLighting"] = {
                    { offset, 0, 0, 0, 255, 255, 255 }, -- Lane 1
                    { offset + 27.75, 0, 0, 0, 255, 255, 255 }, -- Lane 2
                    { offset + 50, 0, 0, 0, 255, 255, 255 }, -- Lane 3
                    { offset + 78, 0, 0, 0, 255, 255, 255 }, -- Lane 4
                    { offset + 110, 0, 0, 0, 255, 255, 255 }, -- Lane 5
                    { offset + 137.75, 0, 0, 0, 255, 255, 255 }, -- Lane 6
                    { offset + 160, 0, 0, 0, 255, 255, 255 } -- Lane 7
                },
                ["JamGauge"] = {
                    { offset, 538, 0, 0, 255, 255, 255 }
                },
                ["HealthBar"] = {
                    { offset + 800, 60, 0, 0, 255, 255, 255 }
                },
                ["Pill"] = {
                    { offset - 19, 463, 0, 0, 255, 255, 255 }, -- 1 = Bottom
                    { offset - 19, 414, 0, 0, 255, 255, 255 }, -- 2
                    { offset - 19, 365, 0, 0, 255, 255, 255 }, -- 3
                    { offset - 19, 316, 0, 0, 255, 255, 255 }, -- 4
                    { offset - 19, 267, 0, 0, 255, 255, 255 } -- 5 = Top
                },
                ["ExitButton"] = {
                    { 740, 540, 0, 0, 255, 255, 255 }
                },
                ["WaveGage"] = {
                    { 0, 597, 0, 0, 255, 255, 255 }
                },
                ["Playfield"] = {
                    { offset - 35, 0, 0, 0, 255, 255, 255 }
                },
                ["Title"] = {
                    { 572, 22, 0, 0, 255, 255, 255 }
                },
                ["Playfooter"] = {
                    { 568, 8, 0, 0, 255, 255, 255 }
                },
                ["MeasureLine"] = {
                    { 0, 0, 0, 0, 255, 255, 255 }
                },
		["NoteMods"] = {
                    { 580, 40, 0, 0, 255, 255, 255 }
                },
		["VisualMods"] = {
                    { 620, 40, 0, 0, 255, 255, 255 }
                }
            }
        },

        -- Numeric format: X, Y, Size, Alignment, IsDecimal, R, G, B
        -- Alignment: LEFT, MID, RIGHT or -1, 0, 1
        [DataType.Numeric] = {
            ["Score"] = {
                { offset + 183, 566, 99, "LEFT", false, 255, 255, 255 }
            },
            ["Jam"] = {
                { offset + 94, 120, 99, "MID", false, 255, 255, 255 }
            },
            ["LongNoteCombo"] = {
                { offset + 94, 300, 99, "MID", false, 255, 255, 255 }
            },
            ["Stats"] = {
                { 792, 96, 99, "LEFT", false, 255, 255, 255 }, -- Cool
                { 792, 107, 99, "LEFT", false, 255, 255, 255 }, -- Good
                { 792, 118, 99, "LEFT", false, 255, 255, 255 }, -- Bad
                { 792, 129, 99, "LEFT", false, 255, 255, 255 }, -- Miss
                { 792, 84, 99, "LEFT", false, 255, 255, 255 } -- MaxCombo
            },
            ["Minute"] = {
                { 725, 46, 99, "LEFT", false, 255, 255, 255 }
            },
            ["Second"] = {
                { 792, 46, 2, "LEFT", true, 255, 255, 255 }
            }
        },

        -- Sprite format: NumberOfFrames, X, Y, ScaleX, ScaleY, Rotation, FrameRate, R, G, B
        [DataType.Sprite] = {
            ["JamLogo"] = {
                8, offset + 94, 97, 0.5, 0.5, 13.33, 255, 255, 255
            },
            ["LifeBar"] = {
                1, offset + 198, 267, 0, 0, 30.0, 255, 255, 255
            },
            ["LongNoteLogo"] = {
                1, offset + 94, 290, 0.5, 0.5, 60.0, 255, 255, 255
            },
            ["TargetBar"] = {
                3, offset, 408, 0, 0, 5.0, 255, 255, 255
            }
        },

        -- Rect format: X, Y, Width, Height
        -- No decimal!!!
        [DataType.Rect] = {
            ["Exit"] = {  
                {740, 540, 75, 59}
            },
            ["Title"] = {
                {570, 21, 216, 15}
            }
        }
    }
end

local update = function(deltaTime)
    print(deltaTime)
end

return {
    type = HeaderType.Playing,
    init = init,
    update = update
}
