-- Initialize Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Pizza Place Automation", HidePremium = true, SaveConfig = true, ConfigFolder = "PizzaFarm"})

-- Define settings
local settings = {
    refill_at = 50,
    refill_end = 97,
    deliver_at = 24,
    stay_in_kitchen = true
}

-- Define roles
local roles = {
    doCashier = true,
    doBoxer = true,
    doCook = true,
    doSupplier = true,
    doDelivery = true
}

-- Function to toggle role
local function toggleRole(role)
    roles[role] = not roles[role]
end

-- Function to save settings
local function saveSettings()
    if writefile then
        writefile("PizzaFarm.txt", game:GetService("HttpService"):JSONEncode(settings))
    end
end

-- Create UI elements
local Tab = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddLabel("Role Toggles")

Tab:AddToggle({
    Name = "Cashier",
    Default = roles.doCashier,
    Callback = function(value)
        roles.doCashier = value
    end
})

Tab:AddToggle({
    Name = "Boxer",
    Default = roles.doBoxer,
    Callback = function(value)
        roles.doBoxer = value
    end
})

Tab:AddToggle({
    Name = "Cook",
    Default = roles.doCook,
    Callback = function(value)
        roles.doCook = value
    end
})

Tab:AddToggle({
    Name = "Supplier",
    Default = roles.doSupplier,
    Callback = function(value)
        roles.doSupplier = value
    end
})

Tab:AddToggle({
    Name = "Delivery",
    Default = roles.doDelivery,
    Callback = function(value)
        roles.doDelivery = value
    end
})

Tab:AddLabel("Settings")

Tab:AddSlider({
    Name = "Refill At",
    Min = 0,
    Max = 100,
    Default = settings.refill_at,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "%",
    Callback = function(value)
        settings.refill_at = value
    end    
})

Tab:AddSlider({
    Name = "Refill End",
    Min = 0,
    Max = 100,
    Default = settings.refill_end,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "%",
    Callback = function(value)
        settings.refill_end = value
    end    
})

Tab:AddSlider({
    Name = "Deliver At",
    Min = 0,
    Max = 100,
    Default = settings.deliver_at,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "%",
    Callback = function(value)
        settings.deliver_at = value
    end    
})

Tab:AddToggle({
    Name = "Stay in Kitchen",
    Default = settings.stay_in_kitchen,
    Callback = function(value)
        settings.stay_in_kitchen = value
    end
})

Tab:AddButton({
    Name = "Save Settings",
    Callback = saveSettings
})

-- Main function to initialize the script
local function main()
    -- Load settings if file exists
    if readfile and isfile("PizzaFarm.txt") then
        local savedSettings = game:GetService("HttpService"):JSONDecode(readfile("PizzaFarm.txt"))
        for key, value in pairs(savedSettings) do
            settings[key] = value
        end
    end
end

-- Call the main function to start the script
main()
OrionLib:Init()
