-- Product Purchase Faker
-- Made by esore 2026
-- Добавлены: сканер ID товаров, переключатель replicateSignal

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

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = mainbg

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = mainbg

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

-- ============ ВКЛАДКА SCANNER ============
local scannerTabFrame = Instance.new("ScrollingFrame")
scannerTabFrame.Visible = true  -- по умолчанию видима, т.к. Scanner выбран
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

local scannerLayout = Instance.new("UIListLayout")
scannerLayout.Padding = UDim.new(0.009999999776482582, 0)
scannerLayout.SortOrder = Enum.SortOrder.LayoutOrder
scannerLayout.Parent = scannerTabFrame

-- Кнопка "Scan"
local ScanButton = Instance.new("ImageButton")
ScanButton.Size = UDim2.new(0, 121, 0, 29)
ScanButton.Name = "ScanButton"
ScanButton.ImageTransparency = 1
ScanButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScanButton.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ScanButton.Parent = scannerTabFrame

local UICorner_ScanBtn = Instance.new("UICorner")
UICorner_ScanBtn.CornerRadius = UDim.new(0, 6)
UICorner_ScanBtn.Parent = ScanButton

local UIStroke_ScanBtn = Instance.new("UIStroke")
UIStroke_ScanBtn.Color = Color3.fromRGB(154, 154, 154)
UIStroke_ScanBtn.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_ScanBtn.Parent = ScanButton

local TextLabel_Scan = Instance.new("TextLabel")
TextLabel_Scan.TextWrapped = true
TextLabel_Scan.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Scan.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Scan.Text = "Scan for Products"
TextLabel_Scan.Size = UDim2.new(0, 84, 0, 15)
TextLabel_Scan.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Scan.BorderSizePixel = 0
TextLabel_Scan.BackgroundTransparency = 1
TextLabel_Scan.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Scan.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_Scan.TextSize = 14
TextLabel_Scan.TextScaled = true
TextLabel_Scan.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Scan.Parent = ScanButton

local UIGradient_Scan = Instance.new("UIGradient")
UIGradient_Scan.Rotation = -90
UIGradient_Scan.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_Scan.Parent = ScanButton

-- Контейнер для результатов сканирования (будем добавлять кнопки с ID)
local scanResultsContainer = scannerTabFrame  -- используем сам ScrollingFrame

-- ============ ВКЛАДКА LISTENER ============
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

local listenerLayout = Instance.new("UIListLayout")
listenerLayout.Padding = UDim.new(0.009999999776482582, 0)
listenerLayout.SortOrder = Enum.SortOrder.LayoutOrder
listenerLayout.Parent = listenerTabFrame

-- ============ ВКЛАДКА ACTION ============
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

local actionLayout = Instance.new("UIListLayout")
actionLayout.Padding = UDim.new(0.009999999776482582, 0)
actionLayout.SortOrder = Enum.SortOrder.LayoutOrder
actionLayout.Parent = actionTabFrame

-- Поле ввода ID
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
ProductIDInput.PlaceholderText = "Product ID"
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

-- Предупреждение
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

-- -------- Переключатель Replicate ----------
local ReplicateToggle = Instance.new("ImageButton")
ReplicateToggle.Size = UDim2.new(0, 121, 0, 29)
ReplicateToggle.Name = "ReplicateToggle"
ReplicateToggle.ImageTransparency = 1
ReplicateToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
ReplicateToggle.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ReplicateToggle.Parent = actionTabFrame

local UICorner_Rep = Instance.new("UICorner")
UICorner_Rep.CornerRadius = UDim.new(0, 6)
UICorner_Rep.Parent = ReplicateToggle

local UIStroke_Rep = Instance.new("UIStroke")
UIStroke_Rep.Color = Color3.fromRGB(154, 154, 154)
UIStroke_Rep.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_Rep.Parent = ReplicateToggle

local TextLabel_Rep = Instance.new("TextLabel")
TextLabel_Rep.TextWrapped = true
TextLabel_Rep.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Rep.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Rep.Text = "Replicate: OFF"
TextLabel_Rep.Size = UDim2.new(0, 84, 0, 15)
TextLabel_Rep.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Rep.BorderSizePixel = 0
TextLabel_Rep.BackgroundTransparency = 1
TextLabel_Rep.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Rep.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_Rep.TextSize = 14
TextLabel_Rep.TextScaled = true
TextLabel_Rep.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Rep.Parent = ReplicateToggle

local UIGradient_Rep = Instance.new("UIGradient")
UIGradient_Rep.Rotation = -90
UIGradient_Rep.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_Rep.Parent = ReplicateToggle

local replicateEnabled = false
ReplicateToggle.MouseButton1Click:Connect(function()
	replicateEnabled = not replicateEnabled
	TextLabel_Rep.Text = replicateEnabled and "Replicate: ON" or "Replicate: OFF"
	if replicateEnabled and not _G.replicateSignal then
		warn("replicateSignal not found in environment")
	end
end)

-- -------- Кнопки сигналов ----------
-- Кнопки для Product, GamePass, Bulk, Purchase
-- (они уже были, но мы их переносим в actionTabFrame с правильным позиционированием)
-- Чтобы не пересоздавать, используем существующие, но они были созданы ранее в коде? В оригинале они были созданы, но не добавлены в actionTabFrame.
-- В оригинальном коде они созданы после PurchaseBtn, но не вложены в actionTabFrame, а просто висят в mainbg? Давайте проверим: в оригинале они создаются после PurchaseBtn, но не имеют родителя. Они просто объявлены, но не добавлены в родителя. Это ошибка. Исправим: добавим их в actionTabFrame.

-- Создадим их заново, вставив в actionTabFrame, чтобы они отображались.
-- Для удобства скопируем код из оригинального скрипта, но изменим родителя на actionTabFrame.

-- Кнопка Signal Product
local HookBtn = Instance.new("ImageButton")
HookBtn.Size = UDim2.new(0, 121, 0, 29)
HookBtn.Name = "HookBtn"
HookBtn.ImageTransparency = 1
HookBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
HookBtn.BorderSizePixel = 0
HookBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
HookBtn.Parent = actionTabFrame

local UICorner_Hook = Instance.new("UICorner")
UICorner_Hook.CornerRadius = UDim.new(0, 6)
UICorner_Hook.Parent = HookBtn

local UIStroke_Hook = Instance.new("UIStroke")
UIStroke_Hook.Color = Color3.fromRGB(154, 154, 154)
UIStroke_Hook.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_Hook.Parent = HookBtn

local TextLabel_Hook = Instance.new("TextLabel")
TextLabel_Hook.TextWrapped = true
TextLabel_Hook.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Hook.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Hook.Text = "Signal Product"
TextLabel_Hook.Size = UDim2.new(0, 84, 0, 15)
TextLabel_Hook.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Hook.BorderSizePixel = 0
TextLabel_Hook.BackgroundTransparency = 1
TextLabel_Hook.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Hook.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_Hook.TextSize = 14
TextLabel_Hook.TextScaled = true
TextLabel_Hook.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Hook.Parent = HookBtn

local UIGradient_Hook = Instance.new("UIGradient")
UIGradient_Hook.Rotation = -90
UIGradient_Hook.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_Hook.Parent = HookBtn

-- Кнопка Signal Gamepass
local GamepassBtn = Instance.new("ImageButton")
GamepassBtn.Size = UDim2.new(0, 121, 0, 29)
GamepassBtn.Name = "GamepassBtn"
GamepassBtn.ImageTransparency = 1
GamepassBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
GamepassBtn.BorderSizePixel = 0
GamepassBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
GamepassBtn.Parent = actionTabFrame

local UICorner_GP = Instance.new("UICorner")
UICorner_GP.CornerRadius = UDim.new(0, 6)
UICorner_GP.Parent = GamepassBtn

local UIStroke_GP = Instance.new("UIStroke")
UIStroke_GP.Color = Color3.fromRGB(154, 154, 154)
UIStroke_GP.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_GP.Parent = GamepassBtn

local TextLabel_GP = Instance.new("TextLabel")
TextLabel_GP.TextWrapped = true
TextLabel_GP.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_GP.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_GP.Text = "Signal Gamepass"
TextLabel_GP.Size = UDim2.new(0, 84, 0, 15)
TextLabel_GP.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_GP.BorderSizePixel = 0
TextLabel_GP.BackgroundTransparency = 1
TextLabel_GP.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_GP.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_GP.TextSize = 14
TextLabel_GP.TextScaled = true
TextLabel_GP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_GP.Parent = GamepassBtn

local UIGradient_GP = Instance.new("UIGradient")
UIGradient_GP.Rotation = -90
UIGradient_GP.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_GP.Parent = GamepassBtn

-- Кнопка Signal Bulk
local BulkBtn = Instance.new("ImageButton")
BulkBtn.Size = UDim2.new(0, 121, 0, 29)
BulkBtn.Name = "BulkBtn"
BulkBtn.ImageTransparency = 1
BulkBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
BulkBtn.BorderSizePixel = 0
BulkBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
BulkBtn.Parent = actionTabFrame

local UICorner_Bulk = Instance.new("UICorner")
UICorner_Bulk.CornerRadius = UDim.new(0, 6)
UICorner_Bulk.Parent = BulkBtn

local UIStroke_Bulk = Instance.new("UIStroke")
UIStroke_Bulk.Color = Color3.fromRGB(154, 154, 154)
UIStroke_Bulk.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_Bulk.Parent = BulkBtn

local TextLabel_Bulk = Instance.new("TextLabel")
TextLabel_Bulk.TextWrapped = true
TextLabel_Bulk.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Bulk.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Bulk.Text = "Signal Bulk"
TextLabel_Bulk.Size = UDim2.new(0, 84, 0, 15)
TextLabel_Bulk.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Bulk.BorderSizePixel = 0
TextLabel_Bulk.BackgroundTransparency = 1
TextLabel_Bulk.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Bulk.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_Bulk.TextSize = 14
TextLabel_Bulk.TextScaled = true
TextLabel_Bulk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Bulk.Parent = BulkBtn

local UIGradient_Bulk = Instance.new("UIGradient")
UIGradient_Bulk.Rotation = -90
UIGradient_Bulk.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_Bulk.Parent = BulkBtn

-- Кнопка Signal Purchase
local PurchaseBtn = Instance.new("ImageButton")
PurchaseBtn.Size = UDim2.new(0, 121, 0, 29)
PurchaseBtn.Name = "PurchaseBtn"
PurchaseBtn.ImageTransparency = 1
PurchaseBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
PurchaseBtn.BorderSizePixel = 0
PurchaseBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
PurchaseBtn.Parent = actionTabFrame

local UICorner_Purch = Instance.new("UICorner")
UICorner_Purch.CornerRadius = UDim.new(0, 6)
UICorner_Purch.Parent = PurchaseBtn

local UIStroke_Purch = Instance.new("UIStroke")
UIStroke_Purch.Color = Color3.fromRGB(154, 154, 154)
UIStroke_Purch.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_Purch.Parent = PurchaseBtn

local TextLabel_Purch = Instance.new("TextLabel")
TextLabel_Purch.TextWrapped = true
TextLabel_Purch.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Purch.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_Purch.Text = "Signal Purchase"
TextLabel_Purch.Size = UDim2.new(0, 84, 0, 15)
TextLabel_Purch.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_Purch.BorderSizePixel = 0
TextLabel_Purch.BackgroundTransparency = 1
TextLabel_Purch.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_Purch.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_Purch.TextSize = 14
TextLabel_Purch.TextScaled = true
TextLabel_Purch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_Purch.Parent = PurchaseBtn

local UIGradient_Purch = Instance.new("UIGradient")
UIGradient_Purch.Rotation = -90
UIGradient_Purch.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_Purch.Parent = PurchaseBtn

-- ============ Drag окна ============
local UIS = game:GetService("UserInputService")
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

-- ============ Tabs Handler ============
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

-- ============ Сканер товаров ============
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Функция сканирования
function scanForProducts()
	-- Очищаем предыдущие результаты (кроме кнопки Scan)
	for _, child in ipairs(scanResultsContainer:GetChildren()) do
		if child.Name ~= "ScanButton" then
			child:Destroy()
		end
	end

	local foundIDs = {}
	local function checkInstance(inst)
		-- Проверяем свойства
		local props = inst:GetProperties()
		for _, prop in ipairs(props) do
			if string.lower(prop) == "productid" or string.lower(prop) == "assetid" or string.lower(prop) == "devproductid" then
				local val = inst[prop]
				if type(val) == "number" and val > 0 then
					table.insert(foundIDs, {id = val, source = inst:GetFullName() .. ":" .. prop})
				end
			end
		end
		-- Проверяем атрибуты
		local attrs = inst:GetAttributes()
		for k, v in pairs(attrs) do
			if type(v) == "number" and v > 0 then
				local lower = string.lower(k)
				if string.find(lower, "product") or string.find(lower, "asset") or string.find(lower, "dev") then
					table.insert(foundIDs, {id = v, source = inst:GetFullName() .. " attribute " .. k})
				end
			end
		end
		-- Проверяем значения NumberValue / StringValue с числом
		if inst:IsA("NumberValue") and inst.Value > 0 then
			table.insert(foundIDs, {id = inst.Value, source = inst:GetFullName() .. " (NumberValue)"})
		end
		if inst:IsA("StringValue") then
			local num = tonumber(inst.Value)
			if num and num > 0 then
				table.insert(foundIDs, {id = num, source = inst:GetFullName() .. " (StringValue)"})
			end
		end
	end

	-- Обходим все объекты в игре (можно ограничить для производительности)
	local descendants = game:GetDescendants()
	for _, obj in ipairs(descendants) do
		checkInstance(obj)
	end

	-- Удаляем дубликаты по ID
	local unique = {}
	local seen = {}
	for _, item in ipairs(foundIDs) do
		if not seen[item.id] then
			seen[item.id] = true
			table.insert(unique, item)
		end
	end

	if #unique == 0 then
		local noRes = Instance.new("TextLabel")
		noRes.TextWrapped = true
		noRes.TextColor3 = Color3.fromRGB(200, 200, 200)
		noRes.BorderColor3 = Color3.fromRGB(0, 0, 0)
		noRes.Text = "No product IDs found."
		noRes.Size = UDim2.new(0, 464, 0, 30)
		noRes.BackgroundTransparency = 1
		noRes.TextSize = 14
		noRes.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		noRes.Parent = scanResultsContainer
		return
	end

	-- Сортируем по ID
	table.sort(unique, function(a,b) return a.id < b.id end)

	for _, item in ipairs(unique) do
		local btn = Instance.new("ImageButton")
		btn.Size = UDim2.new(0, 464, 0, 30)
		btn.ImageTransparency = 1
		btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		btn.BackgroundColor3 = Color3.fromRGB(65, 75, 85)
		btn.Parent = scanResultsContainer

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = btn

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(154, 154, 154)
		UIStroke.Parent = btn

		local text = Instance.new("TextLabel")
		text.TextWrapped = true
		text.TextColor3 = Color3.fromRGB(255, 255, 255)
		text.BorderColor3 = Color3.fromRGB(0, 0, 0)
		text.Text = "ID: " .. tostring(item.id) .. "  [" .. item.source .. "]"
		text.Size = UDim2.new(0, 450, 0, 20)
		text.AnchorPoint = Vector2.new(0.5, 0.5)
		text.Position = UDim2.new(0.5, 0, 0.5, 0)
		text.BackgroundTransparency = 1
		text.TextSize = 14
		text.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		text.Parent = btn

		btn.MouseButton1Click:Connect(function()
			ProductIDInput.Text = tostring(item.id)
			-- Переключаемся на вкладку Action
			ActionTab.MouseButton1Click:Fire()
		end)
	end
end

ScanButton.MouseButton1Click:Connect(function()
	scanForProducts()
end)

-- ============ Функции отправки сигналов с учётом Replicate ============
local function trySendSignal(signalType, ...)
	local args = {...}
	if replicateEnabled and _G.replicateSignal then
		-- Пытаемся использовать replicateSignal (если она есть)
		-- Обычно replicateSignal(remoteEvent, ...), но мы передадим сервис и метод как строку
		-- Вариант: replicateSignal("MarketplaceService:"..signalType, ...) - но это спорно
		-- Поэтому просто вызовем replicateSignal с объектом MarketplaceService и именем метода
		local success, err = pcall(function()
			_G.replicateSignal(MarketplaceService, signalType, unpack(args))
		end)
		if not success then
			warn("replicateSignal failed, falling back to normal call")
			-- fallback
			MarketplaceService[signalType](MarketplaceService, unpack(args))
		end
	else
		-- Обычный вызов
		MarketplaceService[signalType](MarketplaceService, unpack(args))
	end
end

-- Привязка кнопок
HookBtn.MouseButton1Click:Connect(function()
	local productID = tonumber(ProductIDInput.Text)
	if not productID then
		warn("Invalid Product ID")
		return
	end
	print("Falsely Bought product (Product):", productID)
	trySendSignal("SignalPromptProductPurchaseFinished", LocalPlayer.UserId, productID, true)
end)

GamepassBtn.MouseButton1Click:Connect(function()
	local productID = tonumber(ProductIDInput.Text)
	if not productID then
		warn("Invalid Product ID")
		return
	end
	print("Falsely Bought product (Gamepass):", productID)
	trySendSignal("SignalPromptGamePassPurchaseFinished", LocalPlayer, productID, true)
end)

BulkBtn.MouseButton1Click:Connect(function()
	local productID = tonumber(ProductIDInput.Text)
	if not productID then
		warn("Invalid Product ID")
		return
	end
	print("Falsely Bought product (Bulk):", productID)
	trySendSignal("SignalPromptBulkPurchaseFinished", LocalPlayer.UserId, productID, true)
end)

PurchaseBtn.MouseButton1Click:Connect(function()
	local productID = tonumber(ProductIDInput.Text)
	if not productID then
		warn("Invalid Product ID")
		return
	end
	print("Falsely Bought product (Purchase):", productID)
	trySendSignal("SignalPromptPurchaseFinished", LocalPlayer.UserId, productID, true)
end)

-- ============ Логирование (Listener) ============
function addLog(pName, purchasedId, wasPurchased)
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

	local ProductName = Instance.new("TextLabel")
	ProductName.TextWrapped = true
	ProductName.Name = "ProductName"
	ProductName.TextColor3 = Color3.fromRGB(255, 255, 255)
	ProductName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ProductName.Text = pName
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

	local UIGradient = Instance.new("UIGradient")
	UIGradient.Rotation = -90
	UIGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
	}
	UIGradient.Parent = Response

	local ProductID = Instance.new("TextLabel")
	ProductID.TextWrapped = true
	ProductID.Name = "ProductID"
	ProductID.TextColor3 = Color3.fromRGB(255, 201, 37)
	ProductID.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ProductID.Text = tostring(purchasedId)
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
		print("Copied!")
		setclipboard(tostring(purchasedId))
	end)
end

-- Слушаем события
MarketplaceService.PromptProductPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
	print("Hook triggered for product:", purchasedId)
	print("Player:", player)
	print("WasPurchased:", wasPurchased)
	addLog(player.Name, purchasedId, wasPurchased)
end)

-- Также слушаем другие события? По желанию можно добавить, но в оригинале только этот.
-- Для полноты можно добавить и другие, но это не обязательно.

print("Product Purchase Faker loaded. Use Scanner to find product IDs.")
