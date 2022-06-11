-- // Fling Script
local Fling = function()
    local plr = game:GetService("Players").LocalPlayer

    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            plr.Character.Humanoid:SetStateEnabled("Seated", false)
            plr.Character.Animate.Disabled = true
            plr.Character.Humanoid.Sit = true
        end)
    end)

    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            plr.Character:SetPrimaryPartCFrame(
                (_G.BotScripTarget.Character:FindFirstChild("HumanoidRootPart").CFrame or
                    _G.BotScripTarget.Character:FindFirstChildWhichIsA("BasePart").CFrame))
                    
            plr.Character.HumanoidRootPart.CFrame =
                (_G.BotScripTarget.Character:FindFirstChild("HumanoidRootPart").CFrame or
                _G.BotScripTarget.Character:FindFirstChildWhichIsA("BasePart").CFrame)

            plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, -10e10, 10e10)
            plr.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, -10e10, 10e10)
        end)
    end)
end

return Fling
