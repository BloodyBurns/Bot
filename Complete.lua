-- // Very Epic
repeat wait(0.2) until game:GetService('Players').LocalPlayer
local ToSay = game:GetService('HttpService'):JSONDecode(readfile('ToSay.json'))
local Support, File = (syn and syn.queue_on_teleport) or queue_on_teleport or game:Shutdown()
local BotScripts = {
    ['Chat'] = 'Chat.lua',
    ['Fling'] = 'Fling Script.lua',
    ['Target'] = 'Target.lua',
    ['Camera'] = 'CamView.lua'
}

local Run = function(Code, Argument)
    if BotScripts[Code] and Argument then
        local Url = 'https://raw.githubusercontent.com/BloodyBurns/Bot/main/RunScript'
        local Url = Url:gsub('RunScript', BotScripts[Code])
        loadstring(game:HttpGet(Url))()(Argument)
    end
end

Run('Fling', true) -- // Fling Script
Run('Target', game:GetService('Players').LocalPlayer.Name)
Support('loadstring(game:HttpGet(\'https://raw.githubusercontent.com/BloodyBurns/Bot/main/Complete.lua\'))()')
spawn(function()
    while wait(3.5) do
        Run('Chat', ToSay[math.random(1, #ToSay)])
    end
end)

while true do
    for _, v in next, game:GetService('Players'):GetPlayers() do
        _G.BotScripTarget = v
        workspace.CurrentCamera.CameraSubject = workspace.SpawnLocation

        wait(1 / 40) -- // Delay
    end
end
