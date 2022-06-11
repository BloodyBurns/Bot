-- // Chat
local SayMessage = function(Message)
    if Message then
        if type(Message) = "string" then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(Message), "All")
        elseif type(Message) == "table" then
            for _, v in next, Message do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(v), "All")
            end
        end
    end
end
