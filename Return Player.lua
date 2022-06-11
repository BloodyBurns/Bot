-- // Get Target
local ReturnTarget = function(Player)
    if type(Player) == 'string' then
        local Players = game:GetService('Players'):GetPlayers()

        for _, v in next, Players do
            if v and v.Name:lower():sub(1, #Player):match(Player:lower()) then
                return v
            end
        end
    end
    
    return nil
end

return ReturnTarget
