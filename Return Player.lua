-- // Get Target
local ReturnTarget = function(Player)
    local Players = game:GetService('Players'):GetPlayers()

    for _, v in next, Players do
        if v and v.Name:lower():sub(1, #Player):match(Player:lower()) then
            return v
        end
    end
    
    return nil
end

return ReturnTarget
