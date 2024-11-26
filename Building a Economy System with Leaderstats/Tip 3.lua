Tip #3: Create a scalable economy system using Leaderstats. Perfect for tracking player progress and monetization in your game.

game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder", player)
    leaderstats.Name = "leaderstats" -- Creating a leaderstats

    local currency = Instance.new("IntValue", leaderstats)
    currency.Name = "Money"
    currency.Value = 100 -- Amount for new player !

    print(player.Name .. " joined with " .. currency.Value .. " Money.")
end)

💾 Pair this with DataStoreService to save player data across sessions and prevent progress loss.
