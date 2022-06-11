-- // New Camera View
local NewCam = function()
    if workspace:FindFirstChild('BotScript_Camera') then
        return workspace.BotScript_Camera
    end

    local CamView = Instance.new('Part', workspace)
    CamView.Anchored = true
    CamView.Transparency = 1
    CamView.Name = 'BotScript_Camera'
    CamView.CFrame = game:GetService('Players').LocalPlayer.Character:GetModelCFrame()
    return CamView
end
