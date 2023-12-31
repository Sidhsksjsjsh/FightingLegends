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

local T6 = Window:MakeTab({
Name = "Misc",
Icon = "rbxassetid://",
PremiumOnly = false
})

local S1 = T6:AddSection({
Name = "VERIFY DISCORD AND YOUTUBE"
})

local S2 = T6:AddSection({
Name = "EXCLUSIVE EGG"
})

local S3 = T6:AddSection({
Name = "EVENT BOOST CONFIG"
})

local T3 = Window:MakeTab({
Name = "Train Dummy",
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

T3:AddDropdown({
Name = "Select Dummy",
Default = dummies[#dummies],
Options = dummies,
Callback = function(Value)
_G.Dummys_Atk2 = tonumber(Value)
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

T1:AddToggle({
Name = "Auto Claim Daily Rewards",
Default = false,
Callback = function(Value)
_G.d_r = Value
      while wait() do
        if _G.d_r == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimTimeReward"]:InvokeServer()
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
Name = "Auto Train",
Default = false,
Callback = function(Value)
_G.TD = Value
      while wait() do
        if _G.TD == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CoreService"]["RF"]["Click"]:InvokeServer(_G.Dummys_Atk2)
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

S1:AddTextbox({
Name = "Verify Youtube",
Default = "Insert Your Youtube ID",
TextDisappear = true,
Callback = function(Value)
game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CodesService"]["RF"]["VerifyYoutube"]:InvokeServer(Value)
end  
})

S1:AddButton({
Name = "Verify Discord",
Callback = function()
      game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["CodesService"]["RF"]["VerifyDiscord"]:InvokeServer()
  end    
})

S2:AddToggle({
Name = "Auto Claim Exclusive Egg",
Default = false,
Callback = function(Value)
_G.e_egg = Value
      while wait() do
        if _G.e_egg == false then break end
        game:GetService("ReplicatedStorage")["Framework"]["Packages"]["Knit"]["Services"]["RewardsService"]["RF"]["ClaimEventRewards"]:InvokeServer()
      end
end    
})

S3:AddButton({
Name = "Infinite ALL Boost",
Callback = function()
      for _,v in pairs(game:GetService("ReplicatedStorage").EventsBoosts:GetChildren()) do
	v.Value = math.huge
      end
  end    
})
