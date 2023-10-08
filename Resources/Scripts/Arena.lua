local init = function()
    local arenaIndex = Game:GetArenaIndex();
    local offset = Game:GetLaneOffset();

    local arenaData = {
        [DataType.Position] = {
            [7] = {
                ["PlayingBG"] = { 
                    { 0, 0, 0, 0, 255, 255, 255 } 
                },
                ["Judge"] = { 
                    { offset + 94, 360, 0.5, 0.5, 255, 255, 255}, 
                    { offset + 94, 360, 0.5, 0.5, 255, 255, 255}, 
                    { offset + 94, 360, 0.5, 0.5, 255, 255, 255}, 
                    { offset + 94, 360, 0.5, 0.5, 255, 255, 255} 
                }
            }
        },
        [DataType.Numeric] = {
            ["Combo"] = {
                { offset + 94, 194, 4, "MID", false, 255, 255, 255 }
            }
        },
        [DataType.Sprite] = {
            ["ComboLogo"] = { 6, offset + 99, 213, 0.5, 1, 18.0, 255, 255, 255 },
            ["HitEffect"] = { 9, 0, 0, 0.5, 0.45, 30.0, 255, 255, 255 },
            ["HoldEffect"] = { 9, 0, 0, 0.5, 0.45, 30.0, 255, 255, 255 }
        }
    }
    
    if (arenaIndex == 1) then
        
    elseif (arenaIndex == 2) then
        
    elseif (arenaIndex == 3) then
        
    elseif (arenaIndex == 4) then
        
    elseif (arenaIndex == 5) then
        
    elseif (arenaIndex == 6) then
        
    elseif (arenaIndex == 7) then
        
    elseif (arenaIndex == 8) then
        
    elseif (arenaIndex == 9) then
        
    elseif (arenaIndex == 10) then
        
    elseif (arenaIndex == 11) then
        
    elseif (arenaIndex == 12) then
        
    end

    return arenaData
end

return {
    type = HeaderType.Playing,
    init = init
}