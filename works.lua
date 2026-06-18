-- Product Purchase Faker (Improved)
-- Made by esore 2026, modified by AI

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService") -- для генерации ID, если нужно

local LocalPlayer = Players.LocalPlayer

-- Создаём GUI (сохранён оригинальный дизайн, но добавлены новые элементы)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui
ScreenGui.Name = "GH78UERSGWVSTSGV"

local mainbg = Instance.new("Frame")
mainbg.AnchorPoint = Vector2.new(0.5, 0.5)
mainbg.Name = "mainbg"
mainbg.Position = UDim2.new(0.5, 0, 0.5, 0)
mainbg.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainbg.Size = UDim2.new(0, 517, 0, 420) -- увеличен размер для новых элементов
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
Header.Text = "Product Fucker v2"
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

-- Верхние вкладки (без изменений)
local dfgsgdsf = Instance.new("Frame")
dfgsgdsf.BorderColor3 = Color3.fromRGB(0, 0, 0)
dfgsgdsf.AnchorPoint = Vector2.new(0.5, 0.5)
dfgsgdsf.BackgroundTransparency = 1
dfgsgdsf.Position = UDim2.new(0.5, 0, 0.13, 0)
dfgsgdsf.Name = "dfgsgdsf"
dfgsgdsf.Size = UDim2.new(0, 489, 0, 24)
dfgsgdsf.BorderSizePixel = 0
dfgsgdsf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dfgsgdsf.Parent = mainbg

-- Создаём вкладки (код аналогичен оригиналу, не меняем)
local function createTab(name, parent)
    local btn = Instance.new("ImageButton")
    btn.Name = name.."Tab"
    btn.ImageTransparency = 1
    btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    btn.Size = UDim2.new(0, 100, 0, 24)
    btn.BorderSizePixel = 0
    btn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    btn.Parent = parent

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(154, 154, 154)
    stroke.Parent = btn

    local label = Instance.new("TextLabel")
    label.TextWrapped = true
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.Text = name
    label.Size = UDim2.new(0, 84, 0, 15)
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.BorderSizePixel = 0
    label.BackgroundTransparency = 1
    label.Position = UDim2.new(0.5, 0, 0.5, 0)
    label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    label.TextSize = 14
    label.TextScaled = true
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.Parent = btn

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradient.Parent = btn

    return btn
end

local ScanTab = createTab("Scanner", dfgsgdsf)
local ListenerTab = createTab("Listener", dfgsgdsf)
local ActionTab = createTab("Action", dfgsgdsf)

-- Добавляем новую вкладку "Mass"
local MassTab = createTab("Mass", dfgsgdsf)

-- UIListLayout для вкладок
local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0.01, 0)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.FillDirection = Enum.FillDirection.Horizontal
layout.Parent = dfgsgdsf

-- Фреймы для каждой вкладки (сохраняем существующие, добавляем новый)
local scannerTabFrame = Instance.new("ScrollingFrame")
scannerTabFrame.Visible = false
scannerTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
scannerTabFrame.Name = "scannerTabFrame"
scannerTabFrame.Size = UDim2.new(0, 489, 0, 330) -- увеличен под новые элементы
scannerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
scannerTabFrame.Selectable = false
scannerTabFrame.BackgroundTransparency = 1
scannerTabFrame.Position = UDim2.new(0.5, 0, 0.57, 0)
scannerTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scannerTabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scannerTabFrame.BorderSizePixel = 0
scannerTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scannerTabFrame.Parent = mainbg

local listenerTabFrame = Instance.new("ScrollingFrame")
listenerTabFrame.Visible = false
listenerTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
listenerTabFrame.Name = "listenerTabFrame"
listenerTabFrame.Size = UDim2.new(0, 489, 0, 330)
listenerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
listenerTabFrame.Selectable = false
listenerTabFrame.BackgroundTransparency = 1
listenerTabFrame.Position = UDim2.new(0.5, 0, 0.57, 0)
listenerTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
listenerTabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
listenerTabFrame.BorderSizePixel = 0
listenerTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
listenerTabFrame.Parent = mainbg

local actionTabFrame = Instance.new("Frame")
actionTabFrame.ClipsDescendants = true
actionTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
actionTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
actionTabFrame.Name = "actionTabFrame"
actionTabFrame.BackgroundTransparency = 1
actionTabFrame.Position = UDim2.new(0.5, 0, 0.57, 0)
actionTabFrame.SelectionGroup = true
actionTabFrame.Size = UDim2.new(0, 489, 0, 330)
actionTabFrame.BorderSizePixel = 0
actionTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
actionTabFrame.Parent = mainbg

-- Новая вкладка Mass
local massTabFrame = Instance.new("Frame")
massTabFrame.ClipsDescendants = true
massTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
massTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
massTabFrame.Name = "massTabFrame"
massTabFrame.BackgroundTransparency = 1
massTabFrame.Position = UDim2.new(0.5, 0, 0.57, 0)
massTabFrame.SelectionGroup = true
massTabFrame.Size = UDim2.new(0, 489, 0, 330)
massTabFrame.BorderSizePixel = 0
massTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
massTabFrame.Parent = mainbg
massTabFrame.Visible = false

-- UIListLayout для каждого фрейма
local function addListLayout(parent)
    local ll = Instance.new("UIListLayout")
    ll.Padding = UDim.new(0.01, 0)
    ll.SortOrder = Enum.SortOrder.LayoutOrder
    ll.Parent = parent
end
addListLayout(scannerTabFrame)
addListLayout(listenerTabFrame)
addListLayout(actionTabFrame)
addListLayout(massTabFrame)

-- === ДОБАВЛЯЕМ ЭЛЕМЕНТЫ ДЛЯ ВКЛАДКИ ACTION ===
-- (оставляем оригинальные, но исправляем ошибки)

-- Поле ввода Product ID
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

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = grferge

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(154, 154, 154)
stroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
stroke.Parent = grferge

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
ProductIDInput.Position = UDim2.new(0.514, 0, 0.5, 0)
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
Ico.Position = UDim2.new(0.034, 0, 0.5, 0)
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
Warn.Position = UDim2.new(0.458, 0, 0.08, 0)
Warn.AnchorPoint = Vector2.new(0.5, 0.5)
Warn.BorderSizePixel = 0
Warn.BackgroundTransparency = 1
Warn.TextXAlignment = Enum.TextXAlignment.Left
Warn.TextScaled = true
Warn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Warn.TextSize = 14
Warn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warn.Parent = actionTabFrame

-- Кнопки (исправляем ошибки в GamepassBtn и добавляем статус)
local function createActionButton(text, parent, yPos)
    local btn = Instance.new("ImageButton")
    btn.Size = UDim2.new(0, 121, 0, 29)
    btn.Name = text.."Btn"
    btn.ImageTransparency = 1
    btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    btn.Position = UDim2.new(0, 0, yPos, 0)
    btn.BorderSizePixel = 0
    btn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    btn.Parent = parent

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(154, 154, 154)
    stroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
    stroke.Parent = btn

    local label = Instance.new("TextLabel")
    label.TextWrapped = true
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.Text = text
    label.Size = UDim2.new(0, 84, 0, 15)
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.BorderSizePixel = 0
    label.BackgroundTransparency = 1
    label.Position = UDim2.new(0.5, 0, 0.5, 0)
    label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    label.TextSize = 14
    label.TextScaled = true
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.Parent = btn

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradient.Parent = btn

    return btn
end

local HookBtn = createActionButton("Signal Product", actionTabFrame, 0.15)
local GamepassBtn = createActionButton("Signal Gamepass", actionTabFrame, 0.15)
local BulkBtn = createActionButton("Signal Bulk", actionTabFrame, 0.15)
local PurchaseBtn = createActionButton("Signal Purchase", actionTabFrame, 0.15)

-- Перемещаем кнопки в ряд с помощью UIListLayout (они уже внутри actionTabFrame, но позиции заданы, поэтому убираем их из layout или используем абсолютное позиционирование)
-- Удалим существующий UIListLayout и разместим кнопки вручную с помощью UIGridLayout или просто зададим позиции.
-- Проще: удалим старый layout и сделаем новый с horizontal. Но проще задать позиции вручную.
-- Очистим actionTabFrame от лишних layout и расставим кнопки.

-- Сначала удалим старый UIListLayout (если есть)
for _, child in ipairs(actionTabFrame:GetChildren()) do
    if child:IsA("UIListLayout") then child:Destroy() end
end

-- Расставим кнопки горизонтально
local btnWidth = 0.22 -- ширина каждой кнопки в процентах от ширины фрейма
local spacing = 0.02
local startX = 0.02
for i, btn in ipairs({HookBtn, GamepassBtn, BulkBtn, PurchaseBtn}) do
    btn.Size = UDim2.new(btnWidth, 0, 0, 29)
    btn.Position = UDim2.new(startX + (i-1)*(btnWidth + spacing), 0, 0.2, 0)
end

-- Добавим кнопку для массовой отправки на вкладке Mass (будет позже)

-- === ВКЛАДКА MASS ===
-- Поле для ввода нескольких ID (через запятую или пробел)
local massInputFrame = Instance.new("Frame")
massInputFrame.Active = true
massInputFrame.Selectable = true
massInputFrame.BackgroundTransparency = 0.75
massInputFrame.Name = "massInputFrame"
massInputFrame.Size = UDim2.new(0, 464, 0, 60)
massInputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
massInputFrame.BorderSizePixel = 0
massInputFrame.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
massInputFrame.Parent = massTabFrame

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 6)
corner2.Parent = massInputFrame

local stroke2 = Instance.new("UIStroke")
stroke2.Color = Color3.fromRGB(154, 154, 154)
stroke2.BorderStrokePosition = Enum.BorderStrokePosition.Inner
stroke2.Parent = massInputFrame

local MassIDsInput = Instance.new("TextBox")
MassIDsInput.CursorPosition = -1
MassIDsInput.Active = true
MassIDsInput.Selectable = true
MassIDsInput.AnchorPoint = Vector2.new(0.5, 0.5)
MassIDsInput.PlaceholderText = "Product IDs (comma or space separated)"
MassIDsInput.TextSize = 14
MassIDsInput.Size = UDim2.new(0, 420, 0, 40)
MassIDsInput.TextColor3 = Color3.fromRGB(255, 201, 37)
MassIDsInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
MassIDsInput.Text = ""
MassIDsInput.Name = "MassIDsInput"
MassIDsInput.Position = UDim2.new(0.5, 0, 0.5, 0)
MassIDsInput.BorderSizePixel = 0
MassIDsInput.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
MassIDsInput.BackgroundTransparency = 1
MassIDsInput.TextXAlignment = Enum.TextXAlignment.Left
MassIDsInput.TextWrapped = true
MassIDsInput.ClearTextOnFocus = false
MassIDsInput.TextScaled = false
MassIDsInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MassIDsInput.Parent = massInputFrame
MassIDsInput.MultiLine = true

-- Кнопки для массовой отправки
local MassProductBtn = createActionButton("Mass Product", massTabFrame, 0.35)
local MassGamepassBtn = createActionButton("Mass Gamepass", massTabFrame, 0.35)
local MassBulkBtn = createActionButton("Mass Bulk", massTabFrame, 0.35)
local MassPurchaseBtn = createActionButton("Mass Purchase", massTabFrame, 0.35)

-- Расставим кнопки массовой отправки горизонтально
for i, btn in ipairs({MassProductBtn, MassGamepassBtn, MassBulkBtn, MassPurchaseBtn}) do
    btn.Size = UDim2.new(btnWidth, 0, 0, 29)
    btn.Position = UDim2.new(startX + (i-1)*(btnWidth + spacing), 0, 0.55, 0)
end

-- Добавим индикатор прогресса (простой TextLabel)
local MassStatus = Instance.new("TextLabel")
MassStatus.TextWrapped = true
MassStatus.Name = "MassStatus"
MassStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
MassStatus.BorderColor3 = Color3.fromRGB(0, 0, 0)
MassStatus.Text = "Ready"
MassStatus.Size = UDim2.new(0, 400, 0, 20)
MassStatus.Position = UDim2.new(0.5, 0, 0.8, 0)
MassStatus.AnchorPoint = Vector2.new(0.5, 0.5)
MassStatus.BorderSizePixel = 0
MassStatus.BackgroundTransparency = 1
MassStatus.TextXAlignment = Enum.TextXAlignment.Center
MassStatus.TextScaled = true
MassStatus.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
MassStatus.TextSize = 14
MassStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MassStatus.Parent = massTabFrame

-- === ВКЛАДКА SCANNER (добавим функционал) ===
-- Простой интерфейс для получения информации о продукте
local scanInput = Instance.new("TextBox")
scanInput.CursorPosition = -1
scanInput.Active = true
scanInput.Selectable = true
scanInput.AnchorPoint = Vector2.new(0.5, 0.5)
scanInput.PlaceholderText = "Enter Product ID to scan"
scanInput.TextSize = 14
scanInput.Size = UDim2.new(0, 300, 0, 25)
scanInput.TextColor3 = Color3.fromRGB(255, 201, 37)
scanInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
scanInput.Text = ""
scanInput.Name = "ScanInput"
scanInput.Position = UDim2.new(0.5, 0, 0.15, 0)
scanInput.BorderSizePixel = 0
scanInput.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
scanInput.BackgroundTransparency = 0.5
scanInput.TextXAlignment = Enum.TextXAlignment.Center
scanInput.TextWrapped = true
scanInput.ClearTextOnFocus = false
scanInput.TextScaled = true
scanInput.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
scanInput.Parent = scannerTabFrame

local ScanInfo = Instance.new("TextLabel")
ScanInfo.TextWrapped = true
ScanInfo.Name = "ScanInfo"
ScanInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
ScanInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScanInfo.Text = "Product info will appear here"
ScanInfo.Size = UDim2.new(0, 450, 0, 100)
ScanInfo.Position = UDim2.new(0.5, 0, 0.45, 0)
ScanInfo.AnchorPoint = Vector2.new(0.5, 0.5)
ScanInfo.BorderSizePixel = 0
ScanInfo.BackgroundTransparency = 1
ScanInfo.TextXAlignment = Enum.TextXAlignment.Left
ScanInfo.TextScaled = true
ScanInfo.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ScanInfo.TextSize = 14
ScanInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScanInfo.Parent = scannerTabFrame

local ScanBtn = createActionButton("Scan", scannerTabFrame, 0.3)
ScanBtn.Size = UDim2.new(0, 100, 0, 29)
ScanBtn.Position = UDim2.new(0.5, -50, 0.3, 0) -- центрируем

-- === НАСТРОЙКА ВКЛАДОК ===
ScanTab.MouseButton1Click:Connect(function()
    ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
    ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    MassTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    scannerTabFrame.Visible = true
    listenerTabFrame.Visible = false
    actionTabFrame.Visible = false
    massTabFrame.Visible = false
end)
ListenerTab.MouseButton1Click:Connect(function()
    ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ListenerTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
    ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    MassTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    scannerTabFrame.Visible = false
    listenerTabFrame.Visible = true
    actionTabFrame.Visible = false
    massTabFrame.Visible = false
end)
ActionTab.MouseButton1Click:Connect(function()
    ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ActionTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
    MassTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    scannerTabFrame.Visible = false
    listenerTabFrame.Visible = false
    actionTabFrame.Visible = true
    massTabFrame.Visible = false
end)
MassTab.MouseButton1Click:Connect(function()
    ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    MassTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
    scannerTabFrame.Visible = false
    listenerTabFrame.Visible = false
    actionTabFrame.Visible = false
    massTabFrame.Visible = true
end)

-- По умолчанию показываем Action
ActionTab.MouseButton1Click:Fire()

-- === ФУНКЦИИ ОБМАНА (улучшенные) ===

-- Функция для безопасного вызова сигналов с обработкой ошибок
local function safeCall(func, ...)
    local success, err = pcall(func, ...)
    if not success then
        warn("Error in signal call: ", err)
        return false
    end
    return true
end

-- Функция имитации покупки с задержкой (для реалистичности)
local function fakePurchase(signalType, productId, delay)
    delay = delay or 0.5
    local userId = LocalPlayer.UserId
    local player = LocalPlayer

    if not productId or type(productId) ~= "number" then
        warn("Invalid product ID")
        return false
    end

    -- Небольшая задержка перед отправкой (имитация обработки)
    task.wait(delay)

    local success = false
    if signalType == "Product" then
        success = safeCall(MarketplaceService.SignalPromptProductPurchaseFinished, MarketplaceService, userId, productId, true)
    elseif signalType == "Gamepass" then
        success = safeCall(MarketplaceService.SignalPromptGamePassPurchaseFinished, MarketplaceService, player, productId, true)
    elseif signalType == "Bulk" then
        success = safeCall(MarketplaceService.SignalPromptBulkPurchaseFinished, MarketplaceService, userId, productId, true)
    elseif signalType == "Purchase" then
        success = safeCall(MarketplaceService.SignalPromptPurchaseFinished, MarketplaceService, userId, productId, true)
    else
        warn("Unknown signal type")
        return false
    end

    if success then
        print(string.format("[%s] Falsely bought product %d", signalType, productId))
        -- Добавляем запись в лог
        addLog(LocalPlayer.Name, productId, true, signalType)
        return true
    else
        print(string.format("[%s] Failed to fake product %d", signalType, productId))
        addLog(LocalPlayer.Name, productId, false, signalType)
        return false
    end
end

-- Обработчики кнопок (исправленные)
HookBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if not id then
        warn("Invalid Product ID")
        return
    end
    fakePurchase("Product", id, 0.3)
end)

GamepassBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if not id then
        warn("Invalid Product ID")
        return
    end
    fakePurchase("Gamepass", id, 0.3)
end)

BulkBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if not id then
        warn("Invalid Product ID")
        return
    end
    fakePurchase("Bulk", id, 0.3)
end)

PurchaseBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ProductIDInput.Text)
    if not id then
        warn("Invalid Product ID")
        return
    end
    fakePurchase("Purchase", id, 0.3)
end)

-- Массовые обработчики
local function massFake(signalType)
    local text = MassIDsInput.Text
    if text == "" then
        MassStatus.Text = "Please enter product IDs"
        return
    end
    -- Разбиваем по запятой или пробелу
    local ids = {}
    for token in string.gmatch(text, "[^,%s]+") do
        local num = tonumber(token)
        if num then
            table.insert(ids, num)
        end
    end
    if #ids == 0 then
        MassStatus.Text = "No valid IDs found"
        return
    end

    MassStatus.Text = string.format("Sending %d signals...", #ids)
    local successCount = 0
    for i, id in ipairs(ids) do
        local success = fakePurchase(signalType, id, 0.2 + (i-1)*0.1) -- задержка между отправками
        if success then successCount = successCount + 1 end
        MassStatus.Text = string.format("Progress: %d/%d", i, #ids)
        task.wait(0.1) -- небольшая пауза, чтобы не перегружать
    end
    MassStatus.Text = string.format("Done! %d/%d successful", successCount, #ids)
end

MassProductBtn.MouseButton1Click:Connect(function() massFake("Product") end)
MassGamepassBtn.MouseButton1Click:Connect(function() massFake("Gamepass") end)
MassBulkBtn.MouseButton1Click:Connect(function() massFake("Bulk") end)
MassPurchaseBtn.MouseButton1Click:Connect(function() massFake("Purchase") end)

-- === ФУНКЦИЯ ДОБАВЛЕНИЯ ЛОГА (улучшена) ===
function addLog(pName, purchasedId, wasPurchased, signalType)
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

    local statusColor = wasPurchased and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    local statusText = wasPurchased and "[SUCCESS]" or "[FAILED]"

    local ProductName = Instance.new("TextLabel")
    ProductName.TextWrapped = true
    ProductName.Name = "ProductName"
    ProductName.TextColor3 = Color3.fromRGB(255, 255, 255)
    ProductName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ProductName.Text = string.format("%s %s | %s", statusText, signalType or "Unknown", pName)
    ProductName.Size = UDim2.new(0, 287, 0, 15)
    ProductName.Position = UDim2.new(0.34, 0, 0.3, 0)
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
    ProductID.Text = tostring(purchasedId)
    ProductID.Size = UDim2.new(0, 287, 0, 15)
    ProductID.Position = UDim2.new(0.34, 0, 0.7, 0)
    ProductID.AnchorPoint = Vector2.new(0.5, 0.5)
    ProductID.BorderSizePixel = 0
    ProductID.BackgroundTransparency = 1
    ProductID.TextXAlignment = Enum.TextXAlignment.Left
    ProductID.TextScaled = true
    ProductID.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    ProductID.TextSize = 14
    ProductID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ProductID.Parent = Response

    -- Кнопка открытия продукта
    local OpenProduct = Instance.new("ImageButton")
    OpenProduct.ImageTransparency = 1
    OpenProduct.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenProduct.AnchorPoint = Vector2.new(0.5, 0.5)
    OpenProduct.Name = "OpenProduct"
    OpenProduct.Position = UDim2.new(0.948, 0, 0.5, 0)
    OpenProduct.Size = UDim2.new(0, 30, 0, 30)
    OpenProduct.BorderSizePixel = 0
    OpenProduct.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    OpenProduct.Parent = Response

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = OpenProduct

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(154, 154, 154)
    stroke.Parent = OpenProduct

    local IcoOpen = Instance.new("ImageLabel")
    IcoOpen.ImageColor3 = Color3.fromRGB(197, 197, 197)
    IcoOpen.BorderColor3 = Color3.fromRGB(0, 0, 0)
    IcoOpen.Name = "Ico"
    IcoOpen.Size = UDim2.new(0, 18, 0, 18)
    IcoOpen.Position = UDim2.new(0.5, 0, 0.5, 0)
    IcoOpen.AnchorPoint = Vector2.new(0.5, 0.5)
    IcoOpen.Image = "rbxassetid://16884179279"
    IcoOpen.BackgroundTransparency = 1
    IcoOpen.ImageRectSize = Vector2.new(48, 48)
    IcoOpen.ImageRectOffset = Vector2.new(690, 702)
    IcoOpen.BorderSizePixel = 0
    IcoOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    IcoOpen.Parent = OpenProduct

    OpenProduct.MouseButton1Click:Connect(function()
        -- Открыть страницу продукта в браузере (если ID валидный)
        if purchasedId then
            local url = "https://www.roblox.com/catalog/" .. tostring(purchasedId)
            setclipboard(url) -- копируем ссылку в буфер
            print("Copied product URL to clipboard")
        end
    end)

    -- Кнопка копирования ID
    local CopyID = Instance.new("ImageButton")
    CopyID.ImageTransparency = 1
    CopyID.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CopyID.AnchorPoint = Vector2.new(0.5, 0.5)
    CopyID.Name = "CopyID"
    CopyID.Position = UDim2.new(0.87, 0, 0.5, 0)
    CopyID.Size = UDim2.new(0, 30, 0, 30)
    CopyID.BorderSizePixel = 0
    CopyID.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    CopyID.Parent = Response

    local corner2 = Instance.new("UICorner")
    corner2.CornerRadius = UDim.new(0, 6)
    corner2.Parent = CopyID

    local stroke2 = Instance.new("UIStroke")
    stroke2.Color = Color3.fromRGB(154, 154, 154)
    stroke2.Parent = CopyID

    local IcoCopy = Instance.new("ImageLabel")
    IcoCopy.ImageColor3 = Color3.fromRGB(197, 197, 197)
    IcoCopy.BorderColor3 = Color3.fromRGB(0, 0, 0)
    IcoCopy.Name = "Ico"
    IcoCopy.Size = UDim2.new(0, 26, 0, 26)
    IcoCopy.AnchorPoint = Vector2.new(0.5, 0.5)
    IcoCopy.Image = "rbxassetid://16884178261"
    IcoCopy.BackgroundTransparency = 1
    IcoCopy.ImageRectSize = Vector2.new(36, 36)
    IcoCopy.Position = UDim2.new(0.5, 0, 0.5, 0)
    IcoCopy.BorderSizePixel = 0
    IcoCopy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    IcoCopy.Parent = CopyID

    CopyID.MouseButton1Click:Connect(function()
        setclipboard(tostring(purchasedId))
        print("Copied ID:", purchasedId)
    end)
end

-- === СКАНИРОВАНИЕ ПРОДУКТА ===
ScanBtn.MouseButton1Click:Connect(function()
    local id = tonumber(ScanInput.Text)
    if not id then
        ScanInfo.Text = "Invalid ID"
        return
    end

    ScanInfo.Text = "Fetching info..."
    task.wait(0.5)

    local success, info = pcall(function()
        return MarketplaceService:GetProductInfo(id, Enum.InfoType.Product)
    end)

    if success and info then
        local name = info.Name or "Unknown"
        local price = info.PriceInRobux or 0
        local desc = info.Description or "No description"
        ScanInfo.Text = string.format("Name: %s\nPrice: %d Robux\nDescription: %s", name, price, desc)
    else
        ScanInfo.Text = "Failed to fetch product info. Maybe not a product ID?"
    end
end)

-- === ПЕРЕХВАТ СОБЫТИЙ (для логирования реальных покупок, если они происходят) ===
MarketplaceService.PromptProductPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
    if player == LocalPlayer then
        print("Real purchase detected (Product):", purchasedId)
        addLog(LocalPlayer.Name, purchasedId, wasPurchased, "RealProduct")
    end
end)

MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
    if player == LocalPlayer then
        print("Real purchase detected (Gamepass):", purchasedId)
        addLog(LocalPlayer.Name, purchasedId, wasPurchased, "RealGamepass")
    end
end)

MarketplaceService.PromptBulkPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
    if player == LocalPlayer then
        print("Real purchase detected (Bulk):", purchasedId)
        addLog(LocalPlayer.Name, purchasedId, wasPurchased, "RealBulk")
    end
end)

MarketplaceService.PromptPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
    if player == LocalPlayer then
        print("Real purchase detected (Purchase):", purchasedId)
        addLog(LocalPlayer.Name, purchasedId, wasPurchased, "RealPurchase")
    end
end)

-- === ПЕРЕТАСКИВАНИЕ ОКНА ===
function dragify(Frame)
    local dragToggle = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UserInputService:GetFocusedTextBox() == nil then
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

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            TweenService:Create(Frame, TweenInfo.new(0.15), {Position = position}):Play()
        end
    end)
end
dragify(mainbg)

print("Product Faker v2 loaded. Increased chances of deception!")
