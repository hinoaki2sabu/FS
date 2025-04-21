wait(10)
local function GStart()
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("RemoteSpawnPlayer"):InvokeServer()
wait()
game.Players.LocalPlayer.Character:BreakJoints()
wait(6)
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(34, 0, -360) --Respawnから扉に行く時
game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
local vim = game:GetService("VirtualInputManager")
vim:SendKeyEvent(true, 102, false, nil)
wait()
vim:SendKeyEvent(false, 102, false, nil)
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0, 0, -352)
game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0, 0, 0)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("VoteSkip"):InvokeServer()
    	game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()	game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()	game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()	game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0, 0, 0)	game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0, 0, 0)
end

function DeployTM()
    player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Trip Mine" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Trip Mine",
		[2] = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end

function DeployTC1()
	player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Tesla Coil" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Tesla Coil",
		[2] = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function DeployTC2()
player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Tesla Coil" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Tesla Coil",
		[2] = CFrame.new(0, 1, 30, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function DeployTC3()
player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Tesla Coil" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Tesla Coil",
		[2] = CFrame.new(0, 1, 60, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function CheckWaveToDeployTC()
	Wave = game.Players.LocalPlayer.PlayerGui.ScreenGui.GameFrame.Core.WeaponFrame.Wave.Text
	    if Wave+1 == 4 then
		    print(Wave.."Wave now")
		    wait(15)
		    DeployTC1()
		    DeployTC2()
		    DeployTC3()
		    wait(3)
		    BP = game.Players.LocalPlayer.Backpack:GetChildren()
            for _, TC in ipairs(BP) do
                if TC.Name == "Tesla Coil" then
                    TC:Destroy()
                end
            end
        end
	end
	
	function DeployCP()
	    
    player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Caltrops" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Caltrops",
		[2] = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function DeployCD()
    player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Combat Drone" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Combat Drone",
		[2] = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function DeployHS()
    player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Heavy Sentry" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Heavy Sentry",
		[2] = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function DeploySG()
    player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Sentry Gun" then
	HS = TC
	HS.Parent = player.Character
	wait()
	local args = {
		[1] = "Sentry Gun",
		[2] = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
		[3] = false
	}
	
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
	wait()
	HS.Parent = player.Backpack
        end
    end
	end
	function DeployMortar()
    player = game.Players.LocalPlayer
    BP = game.Players.LocalPlayer.Backpack:GetChildren()
    for _, TC in ipairs(BP) do
        if TC.Name == "Mortar" then
    HS = TC
    HS.Parent = player.Character
    wait()
    local args = {
    [1] = "Mortar",
    [2] = CFrame.new(0, 1, -295, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    [3] = 55
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreateDeployable"):InvokeServer(unpack(args))
    wait()
    HS.Parent = player.Backpack
        end
    end
	end
	function Start()
	GStart()
	DeploySG()
	DeployHS()
	DeployMortar()
	DeployCD()
DeployTM()
	LoopDeploy()
	print("LOOPDEPLOYING NOW")
	print("YEEEEEEEES")
	end
	function LoopDeploy()
		while wait() do
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("VoteSkip"):InvokeServer() -- 夜をスキップ
		DeployHS()
		DeploySG()
		DeployMortar()
		DeployCD()
		DeployCP()
		CheckWaveToDeployTC()
		end
		end
	if game.PlaceId == 133815151 then
	local args = {
    [1] = 5,
    [2] = "Default"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunctions"):WaitForChild("CreatePrivate"):InvokeServer(unpack(args))


	print("Teleport To Game")
	else
	wait(5)
	local player = game.Players.LocalPlayer
	local backpack = player
	if #backpack:GetChildren() == 5 then
print("全自動ファイナルスタンドINキャリアV1.1-1.lua is running")
		Start()
		else
		print("Teleport to starting game")
		local TeleportService = game:GetService("TeleportService")
		local TeleportDestination = 133815151
		player = game.Players.LocalPlayer
		TeleportService:Teleport(TeleportDestination, player)
		end
	end
