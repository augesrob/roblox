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
   Name = "Auto Cook",
   CurrentValue = false,
   Flag = "ToggleCook", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function tryCook()
	for zz=1,18 do
		local order = getOrders()[1]
		local topping
		if order=="Pepperoni" or order=="Sausage" then topping=order end
		local cookD = FindFirstDew()
		local badD = FindBadDew()
		local raw,cookP,trash
		if topping then
			--pepperoni order avoids sausage dough and vice verca
			raw,cookP,trash = FindDoughAndWithout(topping=="Pepperoni" and "Sausage" or "Pepperoni")
		else
			raw,cookP,trash = FindDoughAndWithout()
		end
		local ovens = workspace.Ovens:GetChildren()
		for i=#ovens,1,-1 do
		    if #ovens[i]:GetChildren() < 10 then
		        table.remove(ovens,i)
		    end
		end
		for i = #ovens, 2, -1 do --shuffle
			local j = RNG:NextInteger(1, i)
			ovens[j], ovens[i] = ovens[i], ovens[j]
		end
		if doCook then
			local didsomething=false
			--move final pizza
			if cookP and tick()-cookPtick>0.8 then
				local oven = getOvenNear(cookP.Position)
				if oven==nil or oven.IsOpen.Value then
					cookPtick=tick()
					didsomething=true
					if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
					network:FireServer("UpdateProperty", cookP, "CFrame", CFrame.new(RNG:NextNumber(56,57),4.1,38))
				end
			end
			if order then
				if order=="Dew" and cookD and tick()-cookDtick>0.8 then
					--move dew if ordered
					cookDtick=tick()
					didsomething=true
					if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
					network:FireServer("UpdateProperty", cookD, "CFrame", CFrame.new(53,4.68,36.5))
				elseif order~="Dew" and raw and raw.Parent and supplyCounts[order]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0 then
					--make pizza
					if raw.Mesh.Scale.Y>1.5 then
						if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
						didsomething=true
						network:FireServer("UpdateProperty", raw, "CFrame", CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
						wait()
						network:FireServer("SquishDough", raw)
					else
						--make sure it will have an oven
						local oven
						for _,o in ipairs(ovens) do
							if isFullyOpen(o) then
								local other = getDoughNear(o.Bottom.Position)
								if other==nil or not (other.BrickColor.Name=="Bright orange" and ffc(other.SG.Frame,"TomatoSauce") and ffc(other.SG.Frame,"MeltedCheese")) then
									if other then
										--replace mistaken dough
										didsomething=true
										if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
										network:FireServer("UpdateProperty", other, "CFrame", CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
										wait()
									end
									oven=o
									break
								end
							end
						end
						if oven and raw.Parent==workspace.AllDough then
							--make
							if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
							didsomething=true
							network:FireServer("AddIngredientToPizza", raw,"TomatoSauce")
							network:FireServer("AddIngredientToPizza", raw,"Cheese")
							network:FireServer("AddIngredientToPizza", raw,topping)
							network:FireServer("UpdateProperty", raw, "CFrame", oven.Bottom.CFrame+Vector3.new(0,0.7,0))
							oven.Door.ClickDetector.Detector:FireServer()
							--mark as cooking
							cookingDict[order]=cookingDict[order]+1
							local revoked=false
							spawn(function()
								raw.AncestryChanged:Wait()
								if not revoked then
									cookingDict[order]=cookingDict[order]-1
									revoked=true
								end
							end)
							delay(40, function()
								if not revoked then
									cookingDict[order]=cookingDict[order]-1
									revoked=true
								end
							end)
						end
					end
				end
			end
			--open unnecessarily closed ovens
			for _,o in ipairs(ovens) do
				local bar = o.Door.Meter.SurfaceGui.ProgressBar.Bar
				if o.IsOpen.Value==false and (o.IsCooking.Value==false or (Vector3.new(bar.ImageColor3.r,bar.ImageColor3.g,bar.ImageColor3.b)-Vector3.new(.871,.518,.224)).magnitude>.1) then
					didsomething=true
					if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
					o.Door.ClickDetector.Detector:FireServer()
					break
				end
			end
			--trash
			if badD then
				didsomething=true
				if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
				network:FireServer("UpdateProperty", badD, "CFrame", CFrame.new(RNG:NextNumber(28,30), 1.7, RNG:NextNumber(55,57)))
			end
			if trash and (trash.IsBurned.Value==false or getOvenNear(trash.Position)==nil or getOvenNear(trash.Position).IsOpen.Value) then
				--closed oven breaks if you take burnt out of it
				didsomething=true
				if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
				network:FireServer("UpdateProperty", trash, "CFrame", CFrame.new(47.90, 7.00, 72.49, 1, 0, -0, 0, 0, 1, 0, -1, 0))
			end
			if didsomething then wait(0.5) else break end
		else
			break
		end
	end
end
wait(1)
        print("Auto Cook")
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
