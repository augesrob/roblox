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
      Title = "Key | augesrob's Hub",
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

local Toggle = TPTab:CreateButton({
   Name = "Auto Farm",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/augesrob/roblox/main/workingatpizzappace.lua'))()
   end,
})

local TPTab = Window:CreateTab("🛸 Teleport", nil) -- Title, Image

local tpspawn = TPTab:CreateButton({
   Name = "Spawn",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47, 4, 185)
   end,
})

local tpcashier = TPTab:CreateButton({
   Name = "Cashier",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49, 5, 82)
   end,
})

local tpcook = TPTab:CreateButton({
   Name = "Cook",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 5, 62)
   end,
})

local tpboxer = TPTab:CreateButton({
   Name = "Pizza Boxer",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47, 4, 185)
   end,
})

local tpdelivery = TPTab:CreateButton({
   Name = "Delivery",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 5, 18)
   end,
})

local tpsupplier = TPTab:CreateButton({
   Name = "Supplier",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 14, -1033)
   end,
})

local tpmanger = TPTab:CreateButton({
   Name = "Manger",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24, 5, 6)
   end,
})
local ExploitTab = Window:CreateTab("☢️ Exploits", nil) -- Title, Image

local Exploittabmangerdoor = ExploitTab:CreateButton({
   Name = "Remove Manager Door",
   Callback = function()
        game.Workspace.PizzaPlaceDoors.ManagerDoor:destroy()
   end,
})

local Exploittabtruckdrops = ExploitTab:CreateButton({
   Name = "Drop Trucks Contents",
   Callback = function()
    game.Workspace.Trucks.Truck2.LeverBounds.ClickDetector.Detector:FireServer()
	game.Workspace.Trucks.Truck1.LeverBounds.ClickDetector.Detector:FireServer()
   end,
})
