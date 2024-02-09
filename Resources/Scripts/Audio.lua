local path = Game:GetSkinPath();

return {
    Type = Enum.HeaderType.Audio,
    Data = {
        [Enum.DataType.Audio] = {
            {
                Path = path .. "/BGM.ogg",
                Type = Enum.AudioType.Waiting,
            },
            {
                Path = path .. "/FINISH.ogg",
                Type = Enum.AudioType.Result
            }
        }
    }
}