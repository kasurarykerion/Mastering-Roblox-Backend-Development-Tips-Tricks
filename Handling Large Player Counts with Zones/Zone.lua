"📍  Tip #7: Create zones for specific actions (e.g., safe zones, shops) to optimize server performance and improve player interactions. Here's a setup example!"

local Workspace = game:GetService("Workspace")
local ZoneModule = require(ReplicatedStorage:WaitForChild("ZonePlus"))

local safeZone = ZoneModule.new(Workspace.SafeZone)

safeZone.playerEntered:Connect(function(player)
    print(player.Name .. " entered the safe zone.")
    player.Character.Humanoid.WalkSpeed = 0 -- Freeze 
end)

safeZone.playerExited:Connect(function(player)
    print(player.Name .. " left the safe zone.")
    player.Character.Humanoid.WalkSpeed = 16 -- Reset 
end)

"🛠️ Using zones keeps your game organized and reduces server-side checks, especially for large maps."
