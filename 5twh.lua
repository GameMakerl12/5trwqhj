-- Gui to Lua
-- Version: 3.2

-- Instances:

local XSpyNotif = Instance.new("ScreenGui")
local Notif = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")

function MainHold:Notify(text, discription)

XSpyNotif.Name = "XSpyNotif"
XSpyNotif.Parent = game.CoreGui
XSpyNotif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Notif.Name = "Notif"
Notif.Parent = XSpyNotif
Notif.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Notif.Position = UDim2.new(0.665314436, 0, 0.855437636, 0)
Notif.Size = UDim2.new(0, 322, 0, 100)

Title.Name = "Title"
Title.Parent = Notif
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 322, 0, 31)
Title.Font = Enum.Font.SourceSans
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Text.Name = "Text"
Text.Parent = Notif
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0, 0, 0.310000002, 0)
Text.Size = UDim2.new(0, 321, 0, 69)
Text.Font = Enum.Font.SourceSans
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 20.000
Text.TextWrapped = true


  Notif.Visible = false
  Title.Visible = false
  Text.Visible = false

  TweenService:Create(
      Notif,
      TweenInfo.new(.3, Enum.EasingStyle.Quad),
      {BackgroundTransparency = 1}
  ):Play()

  repeat task.wait() until Notif.BackgroundTransparency == 1

  MainFrame:Destroy()
  
    for i,v in pairs(game.CoreGui:FindFirstChild("XSpyNotif"):GetChildren()) do
        if not v:FindFirstChild("Notif") then
            v:Destroy()
        end
    end
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "XSpyNotif" and not v:FindFirstChild("XSpyNotif") then
            v:Destroy()
        end
    end
    
    local PJMNotify = Instance.new("ScreenGui")
    PJMNotify.Name = "XSpyNotif"
    PJMNotify.Parent = game.CoreGui
    PJMNotify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end

return MainHold
