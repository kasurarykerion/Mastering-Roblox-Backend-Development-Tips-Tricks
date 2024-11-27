"⏱️ Tip #6: Managing cooldowns properly can make your game feel more responsive. Use RunService for server-side cooldowns like a pro!"

local RunService = game:GetService("RunService")
local cooldowns = {}

game.Players.PlayerAdded:Connect(function(player)
    cooldowns[player.UserId] = 0
end)

RunService.Heartbeat:Connect(function(deltaTime)
    for userId, timeLeft in pairs(cooldowns) do
        if timeLeft > 0 then
            cooldowns[userId] = timeLeft - deltaTime
        end
    end
end)

game.ReplicatedStorage:WaitForChild("AttackEvent").OnServerEvent:Connect(function(player)
    if cooldowns[player.UserId] <= 0 then
        print(player.Name .. " attacked!")
        cooldowns[player.UserId] = 3 -- 3-second cooldown but you can custom it
    else
        print("Cooldown active for the player" .. player.Name)
    end
end)

🎯 Why use RunService? It's frame-accurate and ensures precise cooldown management in fast-paced games
