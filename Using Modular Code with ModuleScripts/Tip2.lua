 _Tip #2: ModuleScripts are essential for creating clean, reusable code in Roblox. Here's a streamlined example of how to use them effectively_

-- InventoryManager Is the name of this modulescript
local InventoryManager = {}

function InventoryManager:AddItem(player, item)
    player.Inventory = player.Inventory or {}
    table.insert(player.Inventory, item)
    print(item .. " added to " .. player.Name .. "'s inventory.")
end

return InventoryManager


-- Server
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local InventoryManager = require(ReplicatedStorage:WaitForChild("InventoryManager"))

game.Players.PlayerAdded:Connect(function(player)
    InventoryManager:AddItem(player, "Mom Power")
end)

🛠️ _Modular code simplifies debugging and promotes scalability in larger projects. Always think ahead._
