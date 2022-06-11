-- // Target
local Target = function(Player)
    local Player = loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Bot/main/Return%20Player.lua"))()(Player)

    if Player then
        _G.BotScripTarget = Player
    end
end

return Target
