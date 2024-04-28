--[[omini x]]--

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
     Title = "Cave Hub | 1.0.0",
     SubTitle = "" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
     TabWidth = 160,
     Size = UDim2.fromOffset(580, 460),
     Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
     Theme = "Darker",
     MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "SpawnAlien", Icon = "rbxassetid://12974189594" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "rbxassetid://14187688371" }),
    Special = Window:AddTab({ Title = "Special(Soon)", Icon = "rbxassetid://14202377484" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        SubContent = "Beta Test", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
end
------------------------------------------[[SpawnAlien]]------------------------------------------

local section = Tabs.Main:AddSection("Ben10 Classic")

function Hero(Time)
     if Time == "HeatBlast" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("AF","heatblast",240,false)
     elseif Time == "WildMutt" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("AF","wildmutt",240,false)
     elseif Time == "DiamondHead" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("AF","diamond",240,false)
     elseif Time == "XRL8" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("AF","xrl8",240,false)
     elseif Time == "Graymatter" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","graymatter",240,false)
     elseif Time == "Fourarms" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","fourarms",240,false)
     elseif Time == "Stinkfly" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","stinkfly",240,false)
     elseif Time == "Ripjaws" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","ripjaws",240,false)
     elseif Time == "Upgrade" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","ultrat",240,false)
     elseif Time == "Ghostfreak" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","ghostfreak",240,false)
     elseif Time == "Cannonbolt" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","cannonbolt",240,false)
     elseif Time == "Wildvine" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","wildvine",240,false)
     elseif Time == "Blitzwolfer" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","blitzwolfer",240,false)
     elseif Time == "Snareoh" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","snareoh",240,false)
     elseif Time == "Frankenstrike" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","frankenstrike",240,false)
     elseif Time == "Upchuck" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","upchuck",240,false)
     elseif Time == "eyeguy" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","eyeguy",240,false)
     elseif Time == "Ditto" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","ditto",240,false)
     elseif Time == "Feedback" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","feedback",240,false)
     elseif Time == "Buzzshock" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","buzzshock",240,false)
     elseif Time == "Articguana" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","articguana",240,false)
     elseif Time == "Spitter" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","spitter",240,false)
     elseif Time == "Clockwork" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","clockwork",240,false)

     end
end
local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
     Title = "SelectAlien",
     Values = {"HeatBlast", "WildMutt", "DiamondHead", "XRL8", "Graymatter","Fourarms", "Stinkfly", "nine", "Ripjaws", "Upgrade", "Ghostfreak", "Cannonbolt", "Wildvine", "Blitzwolfer", "Snareoh", "Frankenstrike", "Upchuck", "eyeguy", "Ditto", "Feedback", "Buzzshock", "Articguana", "Spitter", "Clockwork"},
     Multi = false,
     Default = 1,
})

Dropdown:SetValue()

Dropdown:OnChanged(function(Value)
     Time = Value
end)
Tabs.Main:AddButton({
     Title = "Transform",
     Callback = function()
          Hero(Dropdown.Value)
     end
})
Tabs.Main:AddButton({
     Title = "UnTransform",
     Callback = function()
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UnMorph"):FireServer(false) 
     end
})


local section = Tabs.Main:AddSection("OP!!")

--[[blitzwolfer]]--

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "SpamSkill(blitzwolfer OP!!)", Default = false })

Toggle:OnChanged(function(Value)
_G.Spam = Value
     if _G.Spam then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","blitzwolfer",240,false)
          while _G.Spam do task.wait()
               game:GetService("ReplicatedStorage"):WaitForChild("AliensPowerRemotes"):WaitForChild("blitzwolfer"):WaitForChild("SoundAttack"):FireServer()
          end
     else
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UnMorph"):FireServer(false)
     end
end)

Options.MyToggle:SetValue(false)

--[[HeatBlast]]--

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "SpamSkill(HeatBlast OP!!)", Default = false })

Toggle:OnChanged(function(Value)
_G.Spam2 = Value
     if _G.Spam2 then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","heatblast",240,false,true)
          while _G.Spam2 do task.wait(1)
               game:GetService("ReplicatedStorage"):WaitForChild("AliensPowerRemotes"):WaitForChild("uheatblast"):WaitForChild("Attack2"):FireServer()
               game:GetService("ReplicatedStorage"):WaitForChild("AliensPowerRemotes"):WaitForChild("uheatblast"):WaitForChild("Attack3"):FireServer()
          end
     else
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UnMorph"):FireServer(false)
     end
end)

Options.MyToggle:SetValue(false)

--[[Humungosaur]]--

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "SpamSkill(Humungosaur OP!!)", Default = false })

Toggle:OnChanged(function(Value)
_G.Spam3 = Value
     if _G.Spam3 then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","humungosaur",240,false)
          wait()
          game:GetService("ReplicatedStorage"):WaitForChild("AliensPowerRemotes"):WaitForChild("humungosaur"):WaitForChild("Big"):FireServer()
          while _G.Spam3 do task.wait(1)
               game:GetService("ReplicatedStorage"):WaitForChild("AliensPowerRemotes"):WaitForChild("humungosaur"):WaitForChild("Tremida2"):FireServer()
               game:GetService("ReplicatedStorage"):WaitForChild("AliensPowerRemotes"):WaitForChild("humungosaur"):WaitForChild("hjump2"):FireServer()
          end
     else
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UnMorph"):FireServer(false)
     end
end)

Options.MyToggle:SetValue(false)

------------------------------------------[[Teleport]]------------------------------------------

local section = Tabs.Teleport:AddSection("Omnitrix")
function TeleportToOmnitrix(omnitrix)
     if omnitrix == "Classic" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9992.47168, -266.54599, 6672.53662, 0.178893819, 1.06611516e-07, 0.983868361, 2.64233901e-09, 1, -1.08839977e-07, -0.983868361, 2.20705125e-08, 0.178893819)
     elseif omnitrix == "AlienForce" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(419.154358, 35290.3867, 241.957169, 0.986714303, -4.72826898e-08, 0.162465125, 4.70774815e-08, 1, 5.11288167e-09, -0.162465125, 2.60349542e-09, 0.986714303)
     end
end

local Dropdown = Tabs.Teleport:AddDropdown("Dropdown", {
     Title = "Omnitrix",
     Values = {"Classic","AlienForce"},
     Multi = false,
     Default = 1,
 })

 Dropdown:SetValue()

 Dropdown:OnChanged(function(Value)
     omnitrix = Value
 end)

Tabs.Teleport:AddButton({
     Title = "Click To TP",
     Callback = function()
          TeleportToOmnitrix(Dropdown.Value)
     end
})

local section = Tabs.Teleport:AddSection("Raid")

Tabs.Teleport:AddButton({
     Title = "Drones-Raid",
     Description = "Lv 25-100",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10822.6855, -141.279114, 5943.18457, 0.972318053, 6.32709813e-08, -0.233661354, -8.12231562e-08, 1, -6.72073455e-08, 0.233661354, 8.43256274e-08, 0.972318053)
     end
})
Tabs.Teleport:AddButton({
     Title = "Animal-Raid",
     Description = "Lv 100-250",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5249.84424, -141.881775, -2315.60181, -0.0150828715, -1.51039714e-08, 0.999886274, 3.27963257e-08, 1, 1.56004081e-08, -0.999886274, 3.30278915e-08, -0.0150828715)
     end
})
Tabs.Teleport:AddButton({
     Title = "Eternal-Raid",
     Description = "Lv 250-500",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1478.54126, -141.882812, 3286.1936, -0.923318267, 1.23503752e-09, 0.384035647, 1.340274e-09, 1, 6.41086446e-12, -0.384035647, 5.2063226e-10, -0.923318267)
     end
})
Tabs.Teleport:AddButton({
     Title = "Vilgax-Raid",
     Description = "Lv 500-750",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4443.89258, 5690.83936, 17305.0215, 0.655812979, 2.49064165e-08, 0.754923403, -8.38683345e-09, 1, -2.5706214e-08, -0.754923403, 1.05270521e-08, 0.655812979)
     end
})
Tabs.Teleport:AddButton({
     Title = "Dna Alien-Raid",
     Description = "Lv 750-1200",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11487.6865, 245.16597, 3499.02905, 0.996759713, 9.10131526e-09, 0.0804365054, -8.87224694e-09, 1, -3.20522142e-09, -0.0804365054, 2.48118304e-09, 0.996759713)
     end
})
Tabs.Teleport:AddButton({
     Title = "Fistrick-Raid",
     Description = "Lv 1200-1450",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-68438.1406, 29672.0977, 34005.043, -0.27681762, -3.65560959e-09, -0.96092248, -8.07151057e-09, 1, -1.47907175e-09, 0.96092248, 7.34666283e-09, -0.27681762)
     end
})
Tabs.Teleport:AddButton({
     Title = "Dagon-Raid",
     Description = "Lv 1450-3000",
     Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6554.45947, -897.683777, -1784.43262, -0.188273862, 8.72356054e-09, -0.98211658, 1.76884274e-09, 1, 8.54331716e-09, 0.98211658, -1.28726391e-10, -0.188273862)
     end
})

------------------------------------------[[Special]]------------------------------------------


Tabs.Special:AddButton({
     Title = "Alien X",
     Callback = function()
          wait(.5)
          game.Players.LocalPlayer:Kick("Sorry But is Coming SOON")
     end
})
local section = Tabs.Special:AddSection("Ultimate Alien")

function Ultimate(Alien)
     if Alien == "Ultimate HeatBlast" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","heatblast",240,false,true)
     elseif Alien == "Ultimate Wildmutt" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","wildmutt",240,false,true)
     elseif Alien == "Ultimate DiamondHead" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","diamond",240,false,true)
     elseif Alien == "Ultimate Graymatter" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","graymatter",240,false,true)
     elseif Alien == "Ultimate Jetray" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","jetray",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)
     elseif Alien == "" then
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AlienMorph"):FireServer("UA","",240,false,true)

     end
end

local Dropdown = Tabs.Special:AddDropdown("Dropdown", {
     Title = "SelectAlien",
     Values = {"Ultimate HeatBlast", "Ultimate DiamondHead", "Ultimate Graymatter", "Ultimate Jetray"},
     Multi = false,
     Default = 1,
 })

 Dropdown:SetValue()

 Dropdown:OnChanged(function(Value)
     Alien = Value
 end)

Tabs.Special:AddButton({
     Title = "Transform",
     Callback = function()
          Ultimate(Dropdown.Value)
     end
})
Tabs.Special:AddButton({
     Title = "UnTransform",
     Callback = function()
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UnMorph"):FireServer(false) 
     end
})


------------------------------------------[[Setting]]------------------------------------------

local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "AutoSave", Default = false })

Toggle:OnChanged(function(Value)
_G.AutoSave = Value
     while _G.AutoSave do task.wait()
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SaveAll"):FireServer()
     end
end)

Options.MyToggle:SetValue(false)
Tabs.Settings:AddButton({
     Title = "Rejoin",
     Description = "",
     Callback = function()
         local ts = game:GetService("TeleportService")
         local p = game:GetService("Players").LocalPlayer
         ts:Teleport(game.PlaceId, p)
     end
})
Tabs.Settings:AddButton({
     Title = "Hop To Low Server",
     Description = "",
     Callback = function()
         local Http = game:GetService("HttpService")
         local TPS = game:GetService("TeleportService")
         local Api = "https://games.roblox.com/v1/games/"
         local _place = game.PlaceId
         local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
         function ListServers(cursor)
             local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
             return Http:JSONDecode(Raw)
         end
         local Server, Next; repeat
                local Servers = ListServers(Next)
                Server = Servers.data[1]
                Next = Servers.nextPageCursor
         until Server
         TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
     end
})
Tabs.Settings:AddButton(
     {
          Title = "FpsBoots",
          Description = "",
          Callback = function()
             local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
             local g = game
             local w = g.Workspace
             local l = g.Lighting
             local t = w.Terrain
             sethiddenproperty(l, "Technology", 2)
             sethiddenproperty(t, "Decoration", false)
             t.WaterWaveSize = 0
             t.WaterWaveSpeed = 0
             t.WaterReflectance = 0
             t.WaterTransparency = 0
             l.GlobalShadows = 0
             l.FogEnd = 9e9
             l.Brightness = 0
             settings().Rendering.QualityLevel = "Level01"
             for i, v in pairs(w:GetDescendants()) do
                 if v:IsA("BasePart") and not v:IsA("MeshPart") then
                     v.Material = "Plastic"
                     v.Reflectance = 0
                 elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
                     v.Transparency = 1
                 elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                     v.Lifetime = NumberRange.new(0)
                 elseif v:IsA("Explosion") then
                     v.BlastPressure = 1
                     v.BlastRadius = 1
                 elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                     v.Enabled = false
                 elseif v:IsA("MeshPart") and decalsyeeted then
                     v.Material = "Plastic"
                     v.Reflectance = 0
                     v.TextureID = 10385902758728957
                 elseif v:IsA("SpecialMesh") and decalsyeeted then
                     v.TextureId = 0
                 elseif v:IsA("ShirtGraphic") and decalsyeeted then
                     v.Graphic = 0
                 elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
                     v[v.ClassName .. "Template"] = 0
                 end
             end
             for i = 1, #l:GetChildren() do
                 e = l:GetChildren()[i]
                 if
                     e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                         e:IsA("BloomEffect") or
                         e:IsA("DepthOfFieldEffect")
                  then
                     e.Enabled = false
                 end
             end
             w.DescendantAdded:Connect(
                 function(v)
                     wait()
                      --prevent errors and shit
                     if v:IsA("BasePart") and not v:IsA("MeshPart") then
                         v.Material = "Plastic"
                         v.Reflectance = 0
                     elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                         v.Transparency = 1
                     elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                         v.Lifetime = NumberRange.new(0)
                     elseif v:IsA("Explosion") then
                         v.BlastPressure = 1
                         v.BlastRadius = 1
                     elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                         v.Enabled = false
                     elseif v:IsA("MeshPart") and decalsyeeted then
                         v.Material = "Plastic"
                         v.Reflectance = 0
                         v.TextureID = 10385902758728957
                     elseif v:IsA("SpecialMesh") and decalsyeeted then
                         v.TextureId = 0
                     elseif v:IsA("ShirtGraphic") and decalsyeeted then
                         v.ShirtGraphic = 0
                     elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
                         v[v.ClassName .. "Template"] = 0
                     end
                 end
             )
         end
     }
)
 --Addons:
 -- SaveManager (Allows you to have a configuration system)
 -- InterfaceManager (Allows you to have a interface managment system)
 
 -- Hand the library over to our managers
 SaveManager:SetLibrary(Fluent)
 InterfaceManager:SetLibrary(Fluent)
 
 -- Ignore keys that are used by ThemeManager.
 -- (we dont want configs to save themes, do we?)
 SaveManager:IgnoreThemeSettings()
 
 -- You can add indexes of elements the save manager should ignore
 SaveManager:SetIgnoreIndexes({})
 
 -- use case for doing it this way:
 -- a script hub could have themes in a global folder
 -- and game configs in a separate folder per game
 InterfaceManager:SetFolder("FluentScriptHub")
 SaveManager:SetFolder("FluentScriptHub/specific-game")
 
 InterfaceManager:BuildInterfaceSection(Tabs.Settings)
 
 -- You can use the SaveManager:LoadAutoloadConfig() to load a config
 -- which has been marked to be one that auto loads!
 SaveManager:LoadAutoloadConfig()
local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "AntiAfk", Default = false }) 
Toggle:OnChanged(function(Value)
     _G.antiAFK = Value
     while _G.antiAFK do wait(30)
     game:GetService'VirtualUser':Button1Down(Vector2.new(788, 547))
end
end)


Window:SelectTab(1)
