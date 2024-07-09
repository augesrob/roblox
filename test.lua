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
   Title = "You executed the script",
   Content = "Enjoy This Script!",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
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

local Dropdown = MainTab:CreateDropdown({
   Name = "Select Area",
   Options = {"Starter World","Pirate Island","Pineapple Paradise"},
   CurrentOption = {"Starter World"},
   MultipleOptions = false,
   Flag = "dropdownarea", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
        print(Option)
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

local OtherSection = MainTab:CreateSection("Other")


local TPTab = Window:CreateTab("🏝 Jobs", nil) -- Title, Image

local Toggle = TPTab:CreateToggle({
   Name = "Auto Boxer",
   CurrentValue = false,
   Flag = "ToggleBoxer", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function FindBoxes()
	local c,o,f
	local children = workspace.AllBox:GetChildren()
	for i=1,#children do
		local b = children[i]
		if ffc(b,"HasPizzaInside") or ffc(b,"Pizza") then
			if c==nil and b.Name=="BoxClosed" and b.Anchored==false and not b.HasPizzaInside.Value then
				c=b
			elseif o==nil and b.Name=="BoxOpen" and b.Anchored==false and not b.Pizza.Value then
				o=b
			elseif f==nil and (b.Name=="BoxOpen" and b.Pizza.Value) or (b.Name=="BoxClosed" and b.HasPizzaInside.Value) then
				f=b
			end
			if c and o and f then
				return c,o,f
			end
		end
	end
	return c,o,f
end
	function FindBoxingFoods()
	local p,d
	local children = workspace.BoxingRoom:GetChildren()
	for i=1,#children do
		local f = children[i]
		if not f.Anchored then
			if p==nil and f.Name=="Pizza" then
				p=f
			elseif d==nil and f.Name=="Dew" then
				d=f
			end
			if p and d then
				return p,d
			end
		end
	end
	return p,d
end
        print("Auto Boxer")
   end,
})

local Button2 = TPTab:CreateButton({
   Name = "Pirate Island",
   Callback = function()
        --Teleport2
   end,
})

local Button3 = TPTab:CreateButton({
   Name = "Pineapple Paradise",
   Callback = function()
        --Teleport3
   end,
})

local TPTab = Window:CreateTab("🎲 Misc", nil) -- Title, Image
