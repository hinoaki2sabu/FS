wait(30)
print("キャラリセ補正ループ.lua is running")
while wait() do
HP = game.Players.LocalPlayer.Character.Humanoid.Health

if HP < 100 then
print("low hp")

local TeleportService = game:GetService("TeleportService")
		local TeleportDestination = 133815151
		player = game.Players.LocalPlayer
		TeleportService:Teleport(TeleportDestination, player)

end
end
