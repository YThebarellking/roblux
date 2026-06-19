-- Product Purchase Faker
-- Made by esore 2026 (improved) + enhancements by AI

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "GH78UERSGWVSTSGV"

local mainbg = Instance.new("Frame")
mainbg.AnchorPoint = Vector2.new(0.5, 0.5)
mainbg.Name = "mainbg"
mainbg.Position = UDim2.new(0.5, 0, 0.5, 0)
mainbg.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainbg.Size = UDim2.new(0, 517, 0, 377)
mainbg.BorderSizePixel = 0
mainbg.BackgroundColor3 = Color3.fromRGB(26, 27, 36)
mainbg.Parent = ScreenGui

local UIScale = Instance.new("UIScale")
UIScale.Scale = 0.6667
UIScale.Parent = mainbg

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = mainbg

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = mainbg

-- Кнопка закрытия
local CloseBtn = Instance.new("ImageButton")
CloseBtn.Size = UDim2.new(0, 24, 0, 24)
CloseBtn.Position = UDim2.new(1, -30, 0, 6)
CloseBtn.Image = "rbxassetid://10747358723"
CloseBtn.BackgroundTransparency = 1
CloseBtn.Parent = mainbg
CloseBtn.MouseButton1Click:Connect(function()
    mainbg.Visible = false
end)

local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "Product Fucker"
Header.Name = "Header"
Header.Size = UDim2.new(0, 197, 0, 19)
Header.Position = UDim2.new(0.025145066902041435, 0, 0.03183024004101753, 0)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.TextSize = 14
Header.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = mainbg

local dfgsgdsf = Instance.new("Frame")
dfgsgdsf.BorderColor3 = Color3.fromRGB(0, 0, 0)
dfgsgdsf.AnchorPoint = Vector2.new(0.5, 0.5)
dfgsgdsf.BackgroundTransparency = 1
dfgsgdsf.Position = UDim2.new(0.5, 0, 0.14300000667572021, 0)
dfgsgdsf.Name = "dfgsgdsf"
dfgsgdsf.Size = UDim2.new(0, 489, 0, 24)
dfgsgdsf.BorderSizePixel = 0
dfgsgdsf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dfgsgdsf.Parent = mainbg

local ScanTab = Instance.new("ImageButton")
ScanTab.Name = "ScanTab"
ScanTab.ImageTransparency = 1
ScanTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScanTab.Size = UDim2.new(0, 100, 0, 24)
ScanTab.BorderSizePixel = 0
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
ScanTab.Parent = dfgsgdsf

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = ScanTab

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = ScanTab

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Scanner"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ScanTab

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = ScanTab

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.Parent = dfgsgdsf

local ListenerTab = Instance.new("ImageButton")
ListenerTab.Name = "ListenerTab"
ListenerTab.ImageTransparency = 1
ListenerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ListenerTab.Size = UDim2.new(0, 100, 0, 24)
ListenerTab.BorderSizePixel = 0
ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ListenerTab.Parent = dfgsgdsf

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = ListenerTab

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = ListenerTab

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Listener"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ListenerTab

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = ListenerTab

local ActionTab = Instance.new("ImageButton")
ActionTab.Name = "ActionTab"
ActionTab.ImageTransparency = 1
ActionTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ActionTab.Size = UDim2.new(0, 100, 0, 24)
ActionTab.BorderSizePixel = 0
ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ActionTab.Parent = dfgsgdsf

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = ActionTab

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = ActionTab

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Action"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = ActionTab

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = ActionTab

local scannerTabFrame = Instance.new("ScrollingFrame")
scannerTabFrame.Visible = false
scannerTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
scannerTabFrame.Name = "scannerTabFrame"
scannerTabFrame.Size = UDim2.new(0, 489, 0, 286)
scannerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
scannerTabFrame.Selectable = false
scannerTabFrame.BackgroundTransparency = 1
scannerTabFrame.Position = UDim2.new(0.5, 0, 0.5859708786010742, 0)
scannerTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scannerTabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scannerTabFrame.BorderSizePixel = 0
scannerTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scannerTabFrame.Parent = mainbg

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = scannerTabFrame

local listenerTabFrame = Instance.new("ScrollingFrame")
listenerTabFrame.Visible = false
listenerTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
listenerTabFrame.Name = "listenerTabFrame"
listenerTabFrame.Size = UDim2.new(0, 489, 0, 286)
listenerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
listenerTabFrame.Selectable = false
listenerTabFrame.BackgroundTransparency = 1
listenerTabFrame.Position = UDim2.new(0.5, 0, 0.5859708786010742, 0)
listenerTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
listenerTabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
listenerTabFrame.BorderSizePixel = 0
listenerTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
listenerTabFrame.Parent = mainbg

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = listenerTabFrame

local actionTabFrame = Instance.new("Frame")
actionTabFrame.ClipsDescendants = true
actionTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
actionTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
actionTabFrame.Name = "actionTabFrame"
actionTabFrame.BackgroundTransparency = 1
actionTabFrame.Position = UDim2.new(0.5, 0, 0.5859708786010742, 0)
actionTabFrame.SelectionGroup = true
actionTabFrame.Size = UDim2.new(0, 489, 0, 286)
actionTabFrame.BorderSizePixel = 0
actionTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
actionTabFrame.Parent = mainbg

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = actionTabFrame

local grferge = Instance.new("Frame")
grferge.Active = true
grferge.Selectable = true
grferge.BackgroundTransparency = 0.75
grferge.Name = "grferge"
grferge.Size = UDim2.new(0, 464, 0, 27)
grferge.BorderColor3 = Color3.fromRGB(0, 0, 0)
grferge.BorderSizePixel = 0
grferge.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
grferge.Parent = actionTabFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = grferge

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke.Parent = grferge

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = grferge

local ProductIDInput = Instance.new("TextBox")
ProductIDInput.CursorPosition = -1
ProductIDInput.Active = true
ProductIDInput.Selectable = true
ProductIDInput.AnchorPoint = Vector2.new(0.5, 0.5)
ProductIDInput.PlaceholderText = "IDs (e.g., 1, 5-10, 20)"
ProductIDInput.TextSize = 14
ProductIDInput.Size = UDim2.new(0, 420, 0, 15)
ProductIDInput.TextColor3 = Color3.fromRGB(255, 201, 37)
ProductIDInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
ProductIDInput.Text = ""
ProductIDInput.Name = "ProductIDInput"
ProductIDInput.Position = UDim2.new(0.514008641242981, 0, 0.5, 0)
ProductIDInput.BorderSizePixel = 0
ProductIDInput.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ProductIDInput.BackgroundTransparency = 1
ProductIDInput.TextXAlignment = Enum.TextXAlignment.Left
ProductIDInput.TextWrapped = true
ProductIDInput.ClearTextOnFocus = false
ProductIDInput.TextScaled = true
ProductIDInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProductIDInput.Parent = grferge

local Ico = Instance.new("ImageLabel")
Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ico.Name = "Ico"
Ico.Size = UDim2.new(0, 15, 0, 15)
Ico.Position = UDim2.new(0.033943966031074524, 0, 0.5, 0)
Ico.AnchorPoint = Vector2.new(0.5, 0.5)
Ico.Image = "rbxassetid://16167590360"
Ico.BackgroundTransparency = 1
Ico.ImageRectSize = Vector2.new(16, 16)
Ico.ImageRectOffset = Vector2.new(253, 492)
Ico.BorderSizePixel = 0
Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ico.Parent = grferge

local Warn = Instance.new("TextLabel")
Warn.TextWrapped = true
Warn.Name = "Warn"
Warn.TextColor3 = Color3.fromRGB(255, 53, 53)
Warn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Warn.Text = "! This won't actually purchase the product, This just fakes it."
Warn.Size = UDim2.new(0, 448, 0, 15)
Warn.Position = UDim2.new(0.45807769894599915, 0, 0.13062931597232819, 0)
Warn.AnchorPoint = Vector2.new(0.5, 0.5)
Warn.BorderSizePixel = 0
Warn.BackgroundTransparency = 1
Warn.TextXAlignment = Enum.TextXAlignment.Left
Warn.TextScaled = true
Warn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Warn.TextSize = 14
Warn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warn.Parent = actionTabFrame

local CountInput = Instance.new("TextBox")
CountInput.Size = UDim2.new(0, 60, 0, 20)
CountInput.Position = UDim2.new(0.75, 0, 0.54, 0)
CountInput.PlaceholderText = "1"
CountInput.Text = "1"
CountInput.TextColor3 = Color3.fromRGB(255, 255, 255)
CountInput.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
CountInput.BorderSizePixel = 0
CountInput.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
CountInput.TextSize = 14
CountInput.TextScaled = true
CountInput.ClearTextOnFocus = false
CountInput.Parent = actionTabFrame
local UICornerCount = Instance.new("UICorner")
UICornerCount.CornerRadius = UDim.new(0, 4)
UICornerCount.Parent = CountInput

-- Кнопки действий
local HookBtn = Instance.new("ImageButton")
HookBtn.Size = UDim2.new(0, 121, 0, 29)
HookBtn.Name = "HookBtn"
HookBtn.ImageTransparency = 1
HookBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
HookBtn.Position = UDim2.new(0, 0, 0.10440554469823837, 0)
HookBtn.BorderSizePixel = 0
HookBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
HookBtn.Parent = actionTabFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = HookBtn

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke.Parent = HookBtn

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Signal Product"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = HookBtn

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = HookBtn

local GamepassBtn = Instance.new("ImageButton")
GamepassBtn.Size = UDim2.new(0, 121, 0, 29)
GamepassBtn.Name = "GamepassBtn"
GamepassBtn.ImageTransparency = 1
GamepassBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
GamepassBtn.Position = UDim2.new(0, 0, 0.10440554469823837, 0)
GamepassBtn.BorderSizePixel = 0
GamepassBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
GamepassBtn.Parent = actionTabFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = GamepassBtn

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke.Parent = GamepassBtn

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Signal Gamepass"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = GamepassBtn

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = GamepassBtn

local BulkBtn = Instance.new("ImageButton")
BulkBtn.Size = UDim2.new(0, 121, 0, 29)
BulkBtn.Name = "BulkBtn"
BulkBtn.ImageTransparency = 1
BulkBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
BulkBtn.Position = UDim2.new(0, 0, 0.10440554469823837, 0)
BulkBtn.BorderSizePixel = 0
BulkBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
BulkBtn.Parent = actionTabFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = BulkBtn

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke.Parent = BulkBtn

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Signal Bulk"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = BulkBtn

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = BulkBtn

local PurchaseBtn = Instance.new("ImageButton")
PurchaseBtn.Size = UDim2.new(0, 121, 0, 29)
PurchaseBtn.Name = "PurchaseBtn"
PurchaseBtn.ImageTransparency = 1
PurchaseBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
PurchaseBtn.Position = UDim2.new(0, 0, 0.10440554469823837, 0)
PurchaseBtn.BorderSizePixel = 0
PurchaseBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
PurchaseBtn.Parent = actionTabFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = PurchaseBtn

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke.Parent = PurchaseBtn

local TextLabel = Instance.new("TextLabel")
TextLabel.TextWrapped = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Signal Purchase"
TextLabel.Size = UDim2.new(0, 84, 0, 15)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = PurchaseBtn

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = -90
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient.Parent = PurchaseBtn

-- === СЕРВИСЫ ===
local UIS = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

-- === DRAG ===
function dragify(Frame)
	dragToggle = nil
	dragSpeed = 0.15
	dragInput = nil
	dragStart = nil
	dragPos = nil
	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(mainbg)

-- === TABS HANDLER ===
ScanTab.MouseButton1Click:Connect(function()
	ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
	ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	scannerTabFrame.Visible = true
	listenerTabFrame.Visible = false
	actionTabFrame.Visible = false
end)
ListenerTab.MouseButton1Click:Connect(function()
	ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	ListenerTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
	ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	scannerTabFrame.Visible = false
	listenerTabFrame.Visible = true
	actionTabFrame.Visible = false
end)
ActionTab.MouseButton1Click:Connect(function()
	ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	ActionTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
	scannerTabFrame.Visible = false
	listenerTabFrame.Visible = false
	actionTabFrame.Visible = true
end)

-- === ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ ===
local function getProductInfo(id, type)
	local success, info = pcall(function()
		return MarketplaceService:GetProductInfo(id, type or Enum.InfoType.Product)
	end)
	if success and info then
		return info.Name, info.PriceInRobux or 0
	end
	return "Unknown", 0
end

local function sendNotification(title, text, duration)
	pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = title,
			Text = text,
			Duration = duration or 3
		})
	end)
end

-- === НОВЫЙ ПАРСИНГ ID с поддержкой диапазонов ===
local function parseIDs(input)
	local ids = {}
	-- удаляем пробелы
	input = input:gsub("%s+", "")
	-- разбиваем по запятой
	for part in string.gmatch(input, "[^,]+") do
		-- проверяем диапазон вида "a-b"
		local a, b = part:match("^(%d+)-(%d+)$")
		if a and b then
			a = tonumber(a)
			b = tonumber(b)
			if a and b and a <= b then
				for i = a, b do
					table.insert(ids, i)
				end
			end
		else
			local num = tonumber(part)
			if num then
				table.insert(ids, num)
			end
		end
	end
	return ids
end

local function fireSignal(signalFunc, ...)
	local success, err = pcall(signalFunc, ...)
	if not success then
		warn("Signal failed:", err)
	end
	return success, err
end

-- === ОБНОВЛЁННАЯ ФУНКЦИЯ addLog с отображением статуса ===
function addLog(pName, purchasedId, wasPurchased, price, productName)
    local Response = Instance.new("Frame")
    Response.Active = true
    Response.Selectable = true
    Response.BackgroundTransparency = 0.75
    Response.Name = "Response"
    Response.Size = UDim2.new(0, 464, 0, 48)
    Response.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Response.BorderSizePixel = 0
    Response.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    Response.Parent = listenerTabFrame

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Response

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(154, 154, 154)
    UIStroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
    UIStroke.Parent = Response

    local timeStr = os.date("%H:%M:%S")
    local displayName = pName or "Unknown"
    local statusText = wasPurchased and "✅" or "❌"

    local ProductName = Instance.new("TextLabel")
    ProductName.TextWrapped = true
    ProductName.Name = "ProductName"
    ProductName.TextColor3 = Color3.fromRGB(255, 255, 255)
    ProductName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ProductName.Text = string.format("[%s] %s %s", timeStr, displayName, statusText)
    ProductName.Size = UDim2.new(0, 287, 0, 15)
    ProductName.Position = UDim2.new(0.3402802050113678, 0, 0.375, 0)
    ProductName.AnchorPoint = Vector2.new(0.5, 0.5)
    ProductName.BorderSizePixel = 0
    ProductName.BackgroundTransparency = 1
    ProductName.TextXAlignment = Enum.TextXAlignment.Left
    ProductName.TextScaled = true
    ProductName.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    ProductName.TextSize = 14
    ProductName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ProductName.Parent = Response

    local ProductID = Instance.new("TextLabel")
    ProductID.TextWrapped = true
    ProductID.Name = "ProductID"
    ProductID.TextColor3 = Color3.fromRGB(255, 201, 37)
    ProductID.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ProductID.Text = string.format("ID: %d | Price: %d", purchasedId, price or 0)
    ProductID.Size = UDim2.new(0, 287, 0, 15)
    ProductID.Position = UDim2.new(0.3402802050113678, 0, 0.6875, 0)
    ProductID.AnchorPoint = Vector2.new(0.5, 0.5)
    ProductID.BorderSizePixel = 0
    ProductID.BackgroundTransparency = 1
    ProductID.TextXAlignment = Enum.TextXAlignment.Left
    ProductID.TextScaled = true
    ProductID.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    ProductID.TextSize = 14
    ProductID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ProductID.Parent = Response

    local UIGradient = Instance.new("UIGradient")
    UIGradient.Rotation = -90
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    UIGradient.Parent = Response

    local OpenProduct = Instance.new("ImageButton")
    OpenProduct.ImageTransparency = 1
    OpenProduct.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenProduct.AnchorPoint = Vector2.new(0.5, 0.5)
    OpenProduct.Name = "OpenProduct"
    OpenProduct.Position = UDim2.new(0.9481724500656128, 0, 0.5, 0)
    OpenProduct.Size = UDim2.new(0, 30, 0, 30)
    OpenProduct.BorderSizePixel = 0
    OpenProduct.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    OpenProduct.Parent = Response

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = OpenProduct

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Color = Color3.fromRGB(154, 154, 154)
	UIStroke.Parent = OpenProduct

	local UIGradient = Instance.new("UIGradient")
	UIGradient.Rotation = -90
	UIGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
	}
	UIGradient.Parent = OpenProduct

	local Ico = Instance.new("ImageLabel")
	Ico.ImageColor3 = Color3.fromRGB(197, 197, 197)
	Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Ico.Name = "Ico"
	Ico.Size = UDim2.new(0, 18, 0, 18)
	Ico.Position = UDim2.new(0.5, 0, 0.5, 0)
	Ico.AnchorPoint = Vector2.new(0.5, 0.5)
	Ico.Image = "rbxassetid://16884179279"
	Ico.BackgroundTransparency = 1
	Ico.ImageRectSize = Vector2.new(48, 48)
	Ico.ImageRectOffset = Vector2.new(690, 702)
	Ico.BorderSizePixel = 0
	Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ico.Parent = OpenProduct

	local CopyID = Instance.new("ImageButton")
	CopyID.ImageTransparency = 1
	CopyID.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CopyID.AnchorPoint = Vector2.new(0.5, 0.5)
	CopyID.Name = "CopyID"
	CopyID.Position = UDim2.new(0.8705862760543823, 0, 0.5, 0)
	CopyID.Size = UDim2.new(0, 30, 0, 30)
	CopyID.BorderSizePixel = 0
	CopyID.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
	CopyID.Parent = Response

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = CopyID

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Color = Color3.fromRGB(154, 154, 154)
	UIStroke.Parent = CopyID

	local UIGradient = Instance.new("UIGradient")
	UIGradient.Rotation = -90
	UIGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
	}
	UIGradient.Parent = CopyID

	local Ico = Instance.new("ImageLabel")
	Ico.ImageColor3 = Color3.fromRGB(197, 197, 197)
	Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Ico.Name = "Ico"
	Ico.Size = UDim2.new(0, 26, 0, 26)
	Ico.AnchorPoint = Vector2.new(0.5, 0.5)
	Ico.Image = "rbxassetid://16884178261"
	Ico.BackgroundTransparency = 1
	Ico.ImageRectSize = Vector2.new(36, 36)
	Ico.Position = UDim2.new(0.5, 0, 0.5, 0)
	Ico.BorderSizePixel = 0
	Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ico.Parent = CopyID

	CopyID.MouseButton1Click:Connect(function()
		pcall(function()
			setclipboard(tostring(purchasedId))
			sendNotification("Copied", "ID copied to clipboard", 2)
		end)
	end)
end

-- === ОБРАБОТЧИК КНОПОК С УЛУЧШЕНИЯМИ (задержки, повторы) ===
local function handleSignal(signalFunc, signalName, isBulk)
	local inputText = ProductIDInput.Text
	if inputText == "" then
		sendNotification("Error", "Enter at least one Product ID", 3)
		return
	end
	local ids = parseIDs(inputText)
	if #ids == 0 then
		sendNotification("Error", "No valid IDs found", 3)
		return
	end

	local count = 1
	if isBulk then
		count = tonumber(CountInput.Text) or 1
		if count < 1 then count = 1 end
	end

	-- Начальная задержка (имитация выбора товара) 1–3 сек
	task.wait(math.random(10, 30) / 10)

	for i = 1, count do
		for _, productID in ipairs(ids) do
			-- Случайная задержка между отправками (0.5–2 сек)
			task.wait(math.random(50, 200) / 100)

			-- Получаем имя и цену
			local productName, price = getProductInfo(productID)
			local playerId = LocalPlayer.UserId
			local player = LocalPlayer

			-- Повторные попытки (до 3 раз с увеличивающейся задержкой)
			local success = false
			local attempt = 0
			while not success and attempt < 3 do
				attempt = attempt + 1
				local ok, err = pcall(signalFunc, 
					signalName == "Product" and playerId or 
					signalName == "Gamepass" and player or 
					playerId, 
					productID, 
					true
				)
				if ok then
					success = true
				else
					warn(string.format("Attempt %d failed for ID %d: %s", attempt, productID, err))
					if attempt < 3 then
						-- Увеличивающаяся задержка: 1–2 сек, 2–4 сек, 4–8 сек
						task.wait(math.random(attempt * 10, attempt * 20) / 10)
					end
				end
			end

			if success then
				print(string.format("Falsely bought %s (ID: %d)", productName, productID))
				sendNotification("Purchase Faked", string.format("Faked %s (ID: %d)", productName, productID), 2)
			else
				warn(string.format("Failed to fake purchase for ID %d after 3 attempts", productID))
				sendNotification("Error", "Failed to fake purchase for ID " .. productID, 3)
			end

			-- Добавляем в лог (с статусом успеха)
			addLog(productName, productID, success, price)
		end
	end
end

-- Назначаем обработчики на кнопки
HookBtn.MouseButton1Click:Connect(function()
	handleSignal(
		function(uid, pid, success)
			MarketplaceService:SignalPromptProductPurchaseFinished(uid, pid, success)
		end,
		"Product",
		false
	)
end)

GamepassBtn.MouseButton1Click:Connect(function()
	handleSignal(
		function(player, pid, success)
			MarketplaceService:SignalPromptGamePassPurchaseFinished(player, pid, success)
		end,
		"Gamepass",
		false
	)
end)

BulkBtn.MouseButton1Click:Connect(function()
	handleSignal(
		function(uid, pid, success)
			MarketplaceService:SignalPromptBulkPurchaseFinished(uid, pid, success)
		end,
		"Bulk",
		true
	)
end)

PurchaseBtn.MouseButton1Click:Connect(function()
	handleSignal(
		function(uid, pid, success)
			MarketplaceService:SignalPromptPurchaseFinished(uid, pid, success)
		end,
		"Purchase",
		false
	)
end)

-- === ПРОСЛУШИВАНИЕ ВСЕХ ТИПОВ ПОКУПОК (единый обработчик) ===
local function onPurchaseFinished(eventName, ...)
    local args = {...}
    local playerOrUserId, productId, wasPurchased

    if eventName == "PromptProductPurchaseFinished" then
        playerOrUserId, productId, wasPurchased = args[1], args[2], args[3]
    elseif eventName == "PromptGamePassPurchaseFinished" then
        playerOrUserId, productId, wasPurchased = args[1], args[2], args[3]
    elseif eventName == "PromptBulkPurchaseFinished" then
        playerOrUserId, productId, wasPurchased = args[1], args[2], args[3]
    elseif eventName == "PromptPurchaseFinished" then
        playerOrUserId, productId, wasPurchased = args[1], args[2], args[3]
    else
        return
    end

    local playerName = (type(playerOrUserId) == "userdata" and playerOrUserId.Name) or tostring(playerOrUserId)
    local productName, price = getProductInfo(productId)

    print(string.format("[%s] %s | ID: %d | Price: %d | WasPurchased: %s", 
        os.date("%H:%M:%S"), productName, productId, price, tostring(wasPurchased)))

    addLog(playerName, productId, wasPurchased, price, productName)
end

-- Подключаем события (удаляем дублирующиеся ранее)
MarketplaceService.PromptProductPurchaseFinished:Connect(function(player, productId, wasPurchased)
    onPurchaseFinished("PromptProductPurchaseFinished", player, productId, wasPurchased)
end)

MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, gamePassId, wasPurchased)
    onPurchaseFinished("PromptGamePassPurchaseFinished", player, gamePassId, wasPurchased)
end)

MarketplaceService.PromptBulkPurchaseFinished:Connect(function(userId, productId, wasPurchased)
    onPurchaseFinished("PromptBulkPurchaseFinished", userId, productId, wasPurchased)
end)

MarketplaceService.PromptPurchaseFinished:Connect(function(userId, productId, wasPurchased)
    onPurchaseFinished("PromptPurchaseFinished", userId, productId, wasPurchased)
end)

print("Product Faker loaded with enhancements: range support, extended delays, retries, unified listener.")
