local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "augesrob's Hub",
   LoadingTitle = "augesrob's Hub",
   LoadingSubtitle = "by augesrob",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "augesrob Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "augesrob's Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/augesrob/roblox/main/key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Welcome To augesrob's Hub",
   Content = "If you have any issues join our discord!",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Sounds Great!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="augesrob's Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local OtherSection = MainTab:CreateSection("Open Auto Farm Menu")

local Toggle = MainTab:CreateButton({
   Name = "Auto Farm",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/augesrob/roblox/main/workingatpizzappace.lua'))()
   end,
})

local HouseTeleportsTab = Window:CreateTab("House Teleports🏘️",nil) -- Title, Image
local Section = HouseTeleportsTab:CreateSection("House Teleports🏘️")

local Button = HouseTeleportsTab:CreateButton({
   Name = "Teleport To Section A",
   Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(165.982025, 3.40004182, -363.706879, 0.999979079, 4.50213555e-08, 0.00646803109, -4.5325212e-08, 1, 4.68313104e-08, -0.00646803109, -4.71234927e-08, 0.999979079)
   end,
})

local Button = HouseTeleportsTab:CreateButton({
   Name = "Teleport To Section B",
   Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3.64866829, 3.39999938, -918.28241, -0.999999046, -3.62046926e-08, 0.00138531998, -3.61200136e-08, 1, 6.11494002e-08, -0.00138531998, 6.10992998e-08, -0.999999046) 
   end,
})

local Button = HouseTeleportsTab:CreateButton({
   Name = "Teleport To Section C",
   Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-160.757156, 3.39999938, -913.209167, -0.999847174, 6.79587053e-09, -0.017481735, 6.52602017e-09, 1, 1.54931907e-08, 0.017481735, 1.53767363e-08, -0.999847174)
   end,
})

local TeleportTab = Window:CreateTab("Teleports🏘️",nil) -- Title, Image
local Section = HouseTeleportsTab:CreateSection("Teleports🏘️")

local TeleportTabspawn = TeleportTab:CreateButton({
   Name = "Spawn",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47, 4, 185)
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport To Managers Office",
   Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.1508675, 3.79999948, 6.54820108, -0.11956615, -2.64227307e-08, 0.992826223, -1.94915124e-08, 1, 2.42662868e-08, -0.992826223, -1.6450258e-08, -0.11956615)
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport To Island",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1524.34741, 7.19977474, 1340.66785, 0.997567058, -3.4135514e-08, -0.0697136596, 3.29050103e-08, 1, -1.87991827e-08, 0.0697136596, 1.64595164e-08, 0.997567058)   
   end,
})

local TeleportTabcashier = TeleportTab:CreateButton({
   Name = "Cashier Job",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49, 5, 82)
   end,
})

local TeleportTabcook = TeleportTab:CreateButton({
   Name = "Cook Job",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 5, 62)
   end,
})

local TeleportTabboxer = TeleportTab:CreateButton({
   Name = "Boxer Job",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 4, 31)
   end,
})

local TeleportTabdelivery = TeleportTab:CreateButton({
   Name = "Delivery Job",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 4, -17)
   end,
})

local Button =  TeleportTab:CreateButton({
   Name = "Suppier Job",
   Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.81031322, 12.9999971, -1031.67151, 0.999766469, -6.97809277e-09, -0.0216099881, 7.94879984e-09, 1, 4.48334632e-08, 0.0216099881, -4.4994767e-08, 0.999766469)
   end,
})

local MiscTab = Window:CreateTab("Misc🎲",nil) -- Title, Image
local Section = MiscTab:CreateSection("Misc🎲")


local Button = MiscTab:CreateButton({
   Name = "Infinite Yield Admin",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Noclip",
   Callback = function()
   local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by augesrob"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
	if Status.Text == "off" then
		Clipon = true
		Status.Text = "on"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "on" then
		Clipon = false
		Status.Text = "off"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)
   end,
})

local Button = MiscTab:CreateButton({
   Name = "BTools",
   Callback = function()
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
    btools.Text = "Loaded!"
    btools.TextColor3 = Color3.fromRGB(0, 255, 50)
    wait(2)
    btools.TextColor3 = Color3.fromRGB(0, 0, 0)
    btools.Text = "BTools"
   end,
})

local MiscTabmangerdoor = MiscTab:CreateButton({
   Name = "Remove Manager Door",
   Callback = function()
        game.Workspace.PizzaPlaceDoors.ManagerDoor:destroy()
   end,
})

local MiscTabtruckdrops = MiscTab:CreateButton({
   Name = "Drop Trucks Contents",
   Callback = function()
    game.Workspace.Trucks.Truck2.LeverBounds.ClickDetector.Detector:FireServer()
	game.Workspace.Trucks.Truck1.LeverBounds.ClickDetector.Detector:FireServer()
   end,
})
