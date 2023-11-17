--[[
 More Feature Coming Soon!
]]

local dum = nil
local mt = getrawmetatable(game);
setreadonly(mt,false)
local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()
	local Args = {...}

	if Method == 'InvokeServer' and self.Name == 'AttackBoss' then
        dum = Args[1]
end
	return namecall(self, ...) 
end)

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

local T4 = Window:MakeTab({
Name = "Teleport",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T5 = Window:MakeTab({
Name = "BOSS",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T3 = Window:MakeTab({
Name = "HALLOWEEN",
Icon = "rbxassetid://",
PremiumOnly = false
})

local egg = {}
local boss = {}
local dummies = {}
local enemies = {}
local zone = {}

OrionLib:AddTable(workspace["_MAP"]["Eggs"],egg)
OrionLib:AddTable(workspace["_MAP"]["Bosses"],boss)
OrionLib:AddTable(workspace["_MAP"]["TrainDummy"],dummies)
OrionLib:AddTable(workspace["_THINGS"]["Coins"],enemies)
OrionLib:AddTable(workspace["_MAP"]["Zones"],zone)

T1:AddDropdown({
Name = "Select Weapon",
Default = "Sword",
Options = {"Sword","Barbell"},
Callback = function(Value)
game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CoreService"]["RF"]["EquipTool"]:InvokeServer(Value)
end    
})

T4:AddDropdown({
Name = "Select Zone to teleport",
Default = zone[1],
Options = zone,
Callback = function(Value)
game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["TeleportService"]["RF"]["Teleport"]:InvokeServer(Value)
end    
})

T5:AddDropdown({
Name = "Select Boss",
Default = boss[1],
Options = boss,
Callback = function(Value)
_G.Boss_Atk = Value
end    
})

T4:AddDropdown({
Name = "Select Zone to buy",
Default = zone[1],
Options = zone,
Callback = function(Value)
game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["TeleportService"]["RF"]["BuyAreaAccess"]:InvokeServer(Value)
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

T3:AddToggle({
Name = "Auto Kill",
Default = false,
Callback = function(Value)
_G.halloween = Value
      while wait() do
        if _G.halloween == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["HalloweenService"]["RF"]["AttackBoss"]:InvokeServer(dum)
      end
end    
})

T5:AddToggle({
Name = "Start Fight",
Default = false,
Callback = function(Value)
_G.f = Value
      while wait() do
        if _G.f == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["BossesService"]["RF"]["FightBoss"]:InvokeServer(_G.Boss_Atk)
      end
end    
})

T5:AddToggle({
Name = "Auto Attack",
Default = false,
Callback = function(Value)
_G.b_atk = Value
      while wait() do
        if _G.b_atk == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["BossesService"]["RF"]["AttackBoss"]:InvokeServer()
      end
end    
})
