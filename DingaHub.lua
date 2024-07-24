local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local LuaName = "DingaHub Premium"

-- Configuration
local initialized = false
local sessionid = ""
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "DingaHub Premium",
		Text = "Thanks For Using DingaHub!",
		Duration = 5
	}
)
wait(2)

setclipboard("https://discord.gg/AuprNXbgwt")

-- Application Details
local Name = "dingahub" -- Application Name
local Ownerid = "rdJaF9rJU2" -- OwnerID
local APPVersion = "1.0" -- Application Version

local req = game:HttpGet('https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=init&ver=' .. APPVersion)

if req == "KeyAuth_Invalid" then 
   print("Error: Application not found.")

   StarterGui:SetCore("SendNotification", {
       Title = LuaName,
       Text = "Error: Application not found.",
       Duration = 3
   })

   return false
end

local data = HttpService:JSONDecode(req)

if data.success then
   initialized = true
   sessionid = data.sessionid
else
   print("Error: " .. data.message)

   StarterGui:SetCore("SendNotification", {
       Title = LuaName,
       Text = "Error: " .. data.message,
       Duration = 3
   })

   return false
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = Library:MakeWindow({Name = "DingaHub Premium Launcher",
})

-- Tabs
local Tab = Window:MakeTab({
    Name = "Welcome",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddLabel("Welcome To DingaHub Premium Login System")
Tab:AddParagraph("Thanks For Using DingaHub!","Also Join Us Discord Server For Giveaways And Updates!")
Tab:AddLabel("DingaHub Made By Dinga!")
Tab:AddLabel("Thanks Sabin For Helping!")
Tab:AddLabel("Thanks augesrob for developing premium login system")
Tab:AddButton({
    Name = "Buy A Premium Key Here",
    Callback = function()
setclipboard("https://dingahub.mysellix.io/products")
print("Sellix.io Link Copied!")
game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "Sellix.io",
		Text = "Sellix.io Link Copied!",
		Duration = 10
	}
)
      end
})

Tab:AddButton({
    Name = "DingaHub Discord Invite",
    Callback = function()
setclipboard("https://discord.gg/AuprNXbgwt")
print("DingaHub Discord Link Copied!")
game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "DingaHub",
		Text = "DingaHub Discord Link Copied!",
		Duration = 10
	}
)
      end
})

local LoginTab = Window:MakeTab({
    Name = "Account Login",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Username = ""
local Password = ""

LoginTab:AddTextbox({
    Name = "Username",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        Username = value
    end
})

LoginTab:AddTextbox({
    Name = "Password",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        Password = value
    end
})

LoginTab:AddButton({
    Name = "Login to Application",
    Callback = function()
        if Username == "" then
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: Username is empty.",
                Duration = 3
            })
            return false
        end
        if Password == "" then
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: Password is empty.",
                Duration = 3
            })
            return false
        end

        local req = game:HttpGet('https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=login&username=' .. Username .. '&pass=' .. Password .. '&ver=' .. APPVersion .. '&sessionid=' .. sessionid .. '&hwid=' .. HWID)
        local data = HttpService:JSONDecode(req)
        
        if not data.success then 
            print("Error: " .. data.message)
        
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: " .. data.message,
                Duration = 5
            })
        
            return false
        end
        
        StarterGui:SetCore("SendNotification", {
            Title = LuaName,
            Text = "Successfully Authorized :)",
            Duration = 5
        })

        -- Close the window
        Library:Destroy()

        -- Load the script from the URL
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dingarik/DingaHubLoader/main/DingaHubLoader"))()
    end
})
-- License Key Tab
local LicenseTab = Window:MakeTab({
    Name = "License Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local LicenseKey = ""

LicenseTab:AddTextbox({
    Name = "License Key",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        LicenseKey = value
    end
})

LicenseTab:AddButton({
    Name = "Activate License Key",
    Callback = function()
        if LicenseKey == "" then
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: License Key is empty.",
                Duration = 3
            })
            return false
        end

        local req = game:HttpGet('https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=license&key=' .. LicenseKey .. '&sessionid=' .. sessionid .. '&hwid=' .. HWID)
        local data = HttpService:JSONDecode(req)
        
        if not data.success then 
            print("Error: " .. data.message)
        
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: " .. data.message,
                Duration = 5
            })
        
            return false
        end
        
        StarterGui:SetCore("SendNotification", {
            Title = LuaName,
            Text = "Successfully Authorized :)",
            Duration = 5
        })

        -- Close the window
        Library:Destroy()

        -- Load the script from the URL
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dingarik/DingaHubLoader/main/DingaHubLoader"))()
    end
})

-- Linkvertise Key Tab
local LinkvertiseTab = Window:MakeTab({
    Name = "Linkvertise Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local LicenseKey = ""

LinkvertiseTab:AddButton({
    Name = "Linkvertise Link",
    Callback = function()
        setclipboard("https://link-target.net/1207084/dingahub-premium-key")
        print("Linkvertise Link Copied!")
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "DingaHub",
                Text = "Linkvertise Link Copied!",
                Duration = 10
            }
        )
    end
})

LinkvertiseTab:AddTextbox({
    Name = "License Key",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        LicenseKey = value
    end
})

LinkvertiseTab:AddButton({
    Name = "Activate License Key",
    Callback = function()
        if LicenseKey == "" then
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: License Key is empty.",
                Duration = 3
            })
            return false
        end

        local req = game:HttpGet('https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=license&key=' .. LicenseKey .. '&sessionid=' .. sessionid .. '&hwid=' .. HWID)
        local data = HttpService:JSONDecode(req)
        
        if not data.success then 
            print("Error: " .. data.message)
        
            StarterGui:SetCore("SendNotification", {
                Title = LuaName,
                Text = "Error: " .. data.message,
                Duration = 5
            })
        
            return false
        end
        
        StarterGui:SetCore("SendNotification", {
            Title = LuaName,
            Text = "Successfully Authorized :)",
            Duration = 5
        })

        -- Close the window
        Library:Destroy()


        -- Load the script from the URL
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dingarik/DingaHubLoader/main/DingaHubLoader"))()
    end
})