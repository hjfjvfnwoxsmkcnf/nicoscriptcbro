local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Nico Key System", HidePremium = false, SaveConfig = true, IntroText = "Nico Club", IntroEnabled = true})

OrionLib:MakeNotification({
	Name = "Scrip key system!",
	Content = "Reloaded content... wanna start!!!??"..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "NICOSUPERPRO2004"
_G.KeyInput = "string"

function MakeScriptHub()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nico-NicoDisco/nicoscriptcbro/main/key.lua"))()
end

function CorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Script loaded!",
	Content = "Reloaded key... full access for"..Player.Name..".",
  	Image = "rbxassetid://6257079063",
	Time = 5
  })
end

function IncorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Invalid key!",
	Content = "Get your key in - discord.gg/nicosclub",
  	Image = "rbxassetid://6257079063",
	Time = 5
  })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
  Name = "Enter Key - discord.gg/nicosclub",
	Default = "Enter Key",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	  if _G.KeyInput == G.Key then
          MakeScriptHub()
          else
            IncorrectKeyNotification()
          end
  	end    
})
