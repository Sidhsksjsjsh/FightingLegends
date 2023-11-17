--[[
 More Feature Coming Soon!
]]

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})
local workspace = game:GetService("Workspace")

local T1 = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "Egg",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "HALLOWEEN",
Icon = "rbxassetid://",
PremiumOnly = false
})

local egg = {}
local boss = {}
local dummies = {}
local enemies = {}

OrionLib:AddTable(workspace["_MAP"]["Eggs"],egg)
OrionLib:AddTable(workspace["_MAP"]["Bosses"],boss)
OrionLib:AddTable(workspace["_MAP"]["TrainDummy"],dummies)
OrionLib:AddTable(Workspace["_THINGS"]["Coins"],enemies)

T1:AddDropdown({
Name = "Select Weapon",
Default = "Sword",
Options = {"Sword","Barbell"},
Callback = function(Value)
game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CoreService"]["RF"]["EquipTool"]:InvokeServer(Value)
end    
})

T2:AddDropdown({
Name = "Select Egg",
Default = egg[1],
Options = egg,
Callback = function(Value)
_G.S_Egg = Value
end    
})

T1:AddToggle({
Name = "Click",
Default = false,
Callback = function(Value)
_G.Click = Value
      while wait() do
        if _G.Click == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CoreService"]["RF"]["Click"]:InvokeServer()
      end
end    
})

T1:AddToggle({
Name = "Rebirth",
Default = false,
Callback = function(Value)
_G.Rb = Value
      while wait() do
        if _G.Rb == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["RebirthService"]["RF"]["Rebirth"]:InvokeServer()
      end
end    
})

T1:AddToggle({
Name = "Buy Sword",
Default = false,
Callback = function(Value)
_G.B_S = Value
      while wait() do
        if _G.B_S == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CoreService"]["RF"]["BuySword"]:InvokeServer()
      end
end    
})

T1:AddToggle({
Name = "Buy Barbell",
Default = false,
Callback = function(Value)
_G.B_B = Value
      while wait() do
        if _G.B_B == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CoreService"]["RF"]["BuyBarbell"]:InvokeServer()
      end
end    
})

T2:AddToggle({
Name = "Hatch",
Default = false,
Callback = function(Value)
_G.Htc = Value
      while wait() do
        if _G.Htc == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["_HatchService"]["RF"]["BuyEgg"]:InvokeServer(_G.S_Egg,1)
      end
end    
})
