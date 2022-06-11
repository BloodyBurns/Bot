-- // Very Epic
local Script = function()
    local ToSay = game:GetService('HttpService'):JSONDecode(readfile('ToSay.json'))
    local Support, File = (syn and syn.queue_on_teleport) or queue_on_teleport or game:Shutdown()
    local BotScripts = {
        ['Chat'] = 'Chat.lua',
        ['Fling'] = 'Fling Script.lua',
        ['Target'] = 'Target.lua',
        ['ReExecute'] = 'Complete.lua'
    }
    
    local Run = function(Code, Argument)
        if BotScripts[Code] and Argument then
            local Url = 'https://raw.githubusercontent.com/BloodyBurns/Bot/main/RunScript'
            local Url = Url:gsub('RunScript', BotScripts[Code])
            loadstring(game:HttpGet(Url))()(Argument)
        end
    end
    
    Support(Run('ReExecute', true))
    Run('Fling', true) -- // Fling Script
    Run('Target', game:GetService('Players').LocalPlayer.Name)
    spawn(function()
        while wait(5) do
            Run('Chat', ToSay[math.random(1, #ToSay)])
        end
    end)
    
    while true do
        for _, v in next, game:GetService('Players'):GetPlayers() do
            _G.FlingBotTarget  = v
            workspace.CurrentCamera.CameraSubject = workspace.SpawnLocation
    
            wait(1/50) -- // Delay
        end
    end
end

return Script
