--[[  Tip #1: RemoteEvents are the backbone of client-server communication in Roblox. Here's how to use them efficiently and securely.
There a exemple of using remotevent ! ]]--

-- SERVERSCRIPTSERVICE
local ReplicatedStorage = game:GetService("ReplicatedStorage") 
local RemoteEvent = Instance.new("RemoteEvent", ReplicatedStorage)
RemoteEvent.Name = "LUAuwu"

RemoteEvent.OnServerEvent:Connect(function(player, data)
    if typeof(data) == "string" then
        print(player.Name .. " sent: " .. data)
    else
        warn("Unexpected data type from " .. player.Name)
    end
end)

-- Client
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteEvent = ReplicatedStorage:WaitForChild("LUAuwu")
RemoteEvent:FireServer("Hello, Server I love Lua!")

 _🔒  Always validate data server-side to protect your game from exploiters. Never trust client input._
