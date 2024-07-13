local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")

--* Application Details *--
local Name = "DingaHub" --* Application Name
local Ownerid = "rdJaF9rJU2" --* OwnerID
local APPVersion = "1.0"     --* Application Version

--* Create UI *--
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local keyTextBox = Instance.new("TextBox")
local submitButton = Instance.new("TextButton")

-- Set properties for the frame
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Set properties for the key text box
keyTextBox.Size = UDim2.new(0, 280, 0, 50)
keyTextBox.Position = UDim2.new(0, 10, 0, 10)
keyTextBox.PlaceholderText = "Enter your key here"
keyTextBox.Parent = frame

-- Set properties for the submit button
submitButton.Size = UDim2.new(0, 280, 0, 50)
submitButton.Position = UDim2.new(0, 10, 0, 70)
submitButton.Text = "Submit"
submitButton.Parent = frame

-- Add the ScreenGui to the player's PlayerGui
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

--* Function to authenticate key *--
local function authenticateKey(key)
    local url = 'https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=login&key=' .. key .. '&ver=' .. APPVersion
    local req = game:HttpGet(url)

    if req == "KeyAuth_Invalid" then
        print("Error: Application not found.")

        StarterGui:SetCore("SendNotification", {
            Title = Name,
            Text = "Error: Application not found!",
            Duration = 3
        })

        return false
    end

    local data = HttpService:JSONDecode(req)

    if data.success then
        print("Authentication successful!")
        StarterGui:SetCore("SendNotification", {
            Title = Name,
            Text = "Authentication successful!",
            Duration = 3
        })
        return true
    else
        print("Error: " .. data.message)
        StarterGui:SetCore("SendNotification", {
            Title = Name,
            Text = "Error: " .. data.message,
            Duration = 3
        })
        return false
    end
end

--* Connect submit button click to authenticate function *--
submitButton.MouseButton1Click:Connect(function()
    local key = keyTextBox.Text
    if key and key ~= "" then
        authenticateKey(key)
    else
        StarterGui:SetCore("SendNotification", {
            Title = Name,
            Text = "Please enter a key.",
            Duration = 3
        })
    end
end)
