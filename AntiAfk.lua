wait(10)
local VirtualUser = game:GetService('VirtualUser')
 
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
 
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "AntiAFK is loaded!",
    Text = "Made by SSJS",
    Button1 = ":)",
    Duration = 5
})

print("AntiAfk.lua is running")
