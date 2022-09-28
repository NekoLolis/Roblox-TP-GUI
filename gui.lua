local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Teleport GUI", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "Loading Teleport GUI..", IntroIcon = "rbxassetid://10974011051"})

local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local p2 = nil

local TPTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TPTab:AddTextbox({
	Name = "Player To TP To",
	Default = "Player To TP To",
	TextDisappear = false,
	Callback = function(Value)
		p2 = Value
        print(Value)
	end	  
})
TPTab:AddButton({
	Name = "Teleport",
	Callback = function()
	    p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
  	end    
})

OrionLib:Init()
