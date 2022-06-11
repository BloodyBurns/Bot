-- // Chat
local SayMessage = function(Message)
    if Message and type(Message) = "string" then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(Message), "All")
    end
end

return SayMessage
