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
local Player = game.Players
local LocalPlayer = Player.LocalPlayer
local userid = LocalPlayer.UserId
local username = LocalPlayer.Name
local MarketplaceService = game:GetService("MarketplaceService")
local placeId = game.PlaceId
local localplrURL = "https://www.roblox.com/users/" .. userid
local gameURL = "https://www.roblox.com/games/" .. placeId
local playerCount = Player:GetPlayers()

-- // actual code and what not
function SendMessage(url, message) -- // Send Message Function
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = message
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent Message")
end
function SendMessageEMBED(url, embed) -- // Send Embeded Message Function
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
  print("Sent Embed")
end


-- // Examples 

--//local url = "https://discord.com/api/webhooks/1220905786511851530/sHil4DOOthLjR9tZJLm9cipBSskIptWQF3NwPyOtQeee1e7ONy3hP64FzMjtD3MOW5UZ" -- // WebHook Here
SendMessage(url)


print("全自動ファイナルスタンドパーク装備-1.lua is running")
AutoEquipFarmPerks()
wait(15)
while wait(10) do
local currentTime = os.time()
local embed = {
    ["title"] = "ファイナルスタンドチェック",
    ["color"] = 1752220,
    ["fields"] = {
        {
            ["name"] = "現在のウェーブ",
            ["value"] = game.Players.LocalPlayer.PlayerGui.ScreenGui.GameFrame.Topbar.Wave.Text
        },
        {
            ["name"] = "現在のレベル",
            ["value"] = game.Workspace.Map.Scripted.PlayerBoards.Scoreboard.Board.SurfaceGui[1].Level.Text
        },
    },
    ["footer"] = {
        ["text"] = "現在の時刻: " .. os.date("%H:%M:%S", currentTime)
    }
}
SendMessageEMBED(url, embed)
AutoEquipFarmPerks()
end
