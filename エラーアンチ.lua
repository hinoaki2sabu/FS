local player = game.Players.LocalPlayer

-- ID of the game to join
local gameToJoinId = "133815151"

-- Function to check if the player has died
local function checkPlayerDeath()
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        return player.Character.Humanoid.Health <= 0
    end
    return false
end

-- Function to join a different game
local function joinDifferentGame()
    game:GetService("TeleportService"):Teleport(gameToJoinId, player)
end
wait(30)
-- Main loop to continuously check if the player has died
print("エラーアンチ.lua is running")
while wait(0.1) do
    if checkPlayerDeath() then
        joinDifferentGame()
        break -- Exit the loop after joining a different game
    end
end
