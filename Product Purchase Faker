-- Product Purchase Faker
-- Made by esore 2026
-- Fixed: Action tab fully visible, window scaled down 1.5x, all elements aligned

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "GH78UERSGWVSTSGV"

local mainbg = Instance.new("Frame")
mainbg.AnchorPoint = Vector2.new(0.5, 0.5)
mainbg.Name = "mainbg"
mainbg.Position = UDim2.new(0.5, 0, 0.5, 0)
mainbg.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainbg.Size = UDim2.new(0, 517, 0, 377)  -- исходный размер, но будет уменьшен через UIScale
mainbg.BorderSizePixel = 0
mainbg.BackgroundColor3 = Color3.fromRGB(26, 27, 36)
mainbg.Parent = ScreenGui

-- Уменьшаем всё окно в 1.5 раза (0.6667 = 1/1.5)
local UIScale = Instance.new("UIScale")
UIScale.Scale = 0.6667
UIScale.Parent = mainbg

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = mainbg

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(154, 154, 154)
UIStroke.Parent = mainbg

-- Заголовок
local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "Product Fucker"
Header.Name = "Header"
Header.Size = UDim2.new(0, 197, 0, 19)
Header.Position = UDim2.new(0.025, 0, 0.032, 0)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.TextSize = 14
Header.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = mainbg

-- Панель вкладок
local tabBar = Instance.new("Frame")
tabBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
tabBar.AnchorPoint = Vector2.new(0.5, 0.5)
tabBar.BackgroundTransparency = 1
tabBar.Position = UDim2.new(0.5, 0, 0.143, 0)
tabBar.Name = "tabBar"
tabBar.Size = UDim2.new(0, 489, 0, 24)
tabBar.BorderSizePixel = 0
tabBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabBar.Parent = mainbg

local tabLayout = Instance.new("UIListLayout")
tabLayout.Padding = UDim.new(0.01, 0)
tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
tabLayout.FillDirection = Enum.FillDirection.Horizontal
tabLayout.Parent = tabBar

-- Вспомогательная функция для стилизации кнопок вкладок
local function styleTabButton(btn, text)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(154, 154, 154)
    stroke.Parent = btn

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradient.Parent = btn

    local label = Instance.new("TextLabel")
    label.TextWrapped = true
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.Text = text
    label.Size = UDim2.new(1, -10, 1, -4)
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Position = UDim2.new(0.5, 0, 0.5, 0)
    label.BorderSizePixel = 0
    label.BackgroundTransparency = 1
    label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    label.TextSize = 14
    label.TextScaled = true
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.Parent = btn
end

-- Кнопки вкладок
local ScanTab = Instance.new("ImageButton")
ScanTab.Name = "ScanTab"
ScanTab.ImageTransparency = 1
ScanTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScanTab.Size = UDim2.new(0, 100, 0, 24)
ScanTab.BorderSizePixel = 0
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
ScanTab.Parent = tabBar
styleTabButton(ScanTab, "Scanner")

local ListenerTab = Instance.new("ImageButton")
ListenerTab.Name = "ListenerTab"
ListenerTab.ImageTransparency = 1
ListenerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ListenerTab.Size = UDim2.new(0, 100, 0, 24)
ListenerTab.BorderSizePixel = 0
ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ListenerTab.Parent = tabBar
styleTabButton(ListenerTab, "Listener")

local ActionTab = Instance.new("ImageButton")
ActionTab.Name = "ActionTab"
ActionTab.ImageTransparency = 1
ActionTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ActionTab.Size = UDim2.new(0, 100, 0, 24)
ActionTab.BorderSizePixel = 0
ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ActionTab.Parent = tabBar
styleTabButton(ActionTab, "Action")

-- Контейнеры вкладок
local scannerTabFrame = Instance.new("ScrollingFrame")
scannerTabFrame.Visible = false
scannerTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
scannerTabFrame.Name = "scannerTabFrame"
scannerTabFrame.Size = UDim2.new(0, 489, 0, 286)
scannerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
scannerTabFrame.Selectable = false
scannerTabFrame.BackgroundTransparency = 1
scannerTabFrame.Position = UDim2.new(0.5, 0, 0.586, 0)
scannerTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scannerTabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scannerTabFrame.BorderSizePixel = 0
scannerTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scannerTabFrame.Parent = mainbg

local scannerLayout = Instance.new("UIListLayout")
scannerLayout.Padding = UDim.new(0.01, 0)
scannerLayout.SortOrder = Enum.SortOrder.LayoutOrder
scannerLayout.Parent = scannerTabFrame

local listenerTabFrame = Instance.new("ScrollingFrame")
listenerTabFrame.Visible = false
listenerTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
listenerTabFrame.Name = "listenerTabFrame"
listenerTabFrame.Size = UDim2.new(0, 489, 0, 286)
listenerTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
listenerTabFrame.Selectable = false
listenerTabFrame.BackgroundTransparency = 1
listenerTabFrame.Position = UDim2.new(0.5, 0, 0.586, 0)
listenerTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
listenerTabFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
listenerTabFrame.BorderSizePixel = 0
listenerTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
listenerTabFrame.Parent = mainbg

local listenerLayout = Instance.new("UIListLayout")
listenerLayout.Padding = UDim.new(0.01, 0)
listenerLayout.SortOrder = Enum.SortOrder.LayoutOrder
listenerLayout.Parent = listenerTabFrame

local actionTabFrame = Instance.new("Frame")
actionTabFrame.ClipsDescendants = true
actionTabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
actionTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
actionTabFrame.Name = "actionTabFrame"
actionTabFrame.BackgroundTransparency = 1
actionTabFrame.Position = UDim2.new(0.5, 0, 0.586, 0)
actionTabFrame.SelectionGroup = true
actionTabFrame.Size = UDim2.new(0, 489, 0, 286)
actionTabFrame.BorderSizePixel = 0
actionTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
actionTabFrame.Parent = mainbg

-- === Элементы вкладки Action ===

-- Поле ввода ID
local inputFrame = Instance.new("Frame")
inputFrame.Active = true
inputFrame.Selectable = true
inputFrame.BackgroundTransparency = 0.75
inputFrame.Name = "inputFrame"
inputFrame.Size = UDim2.new(0, 464, 0, 27)
inputFrame.Position = UDim2.new(0.5, 0, 0.09, 0)
inputFrame.AnchorPoint = Vector2.new(0.5, 0.5)
inputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
inputFrame.BorderSizePixel = 0
inputFrame.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
inputFrame.Parent = actionTabFrame

local cornerInput = Instance.new("UICorner")
cornerInput.CornerRadius = UDim.new(0, 6)
cornerInput.Parent = inputFrame

local strokeInput = Instance.new("UIStroke")
strokeInput.Color = Color3.fromRGB(154, 154, 154)
strokeInput.BorderStrokePosition = Enum.BorderStrokePosition.Inner
strokeInput.Parent = inputFrame

local gradInput = Instance.new("UIGradient")
gradInput.Rotation = -90
gradInput.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
gradInput.Parent = inputFrame

local ProductIDInput = Instance.new("TextBox")
ProductIDInput.CursorPosition = -1
ProductIDInput.Active = true
ProductIDInput.Selectable = true
ProductIDInput.AnchorPoint = Vector2.new(0.5, 0.5)
ProductIDInput.PlaceholderText = "ID (e.g., 1, 5-10)"
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
ProductIDInput.Parent = inputFrame

local iconInput = Instance.new("ImageLabel")
iconInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
iconInput.Name = "Ico"
iconInput.Size = UDim2.new(0, 15, 0, 15)
iconInput.Position = UDim2.new(0.034, 0, 0.5, 0)
iconInput.AnchorPoint = Vector2.new(0.5, 0.5)
iconInput.Image = "rbxassetid://16167590360"
iconInput.BackgroundTransparency = 1
iconInput.ImageRectSize = Vector2.new(16, 16)
iconInput.ImageRectOffset = Vector2.new(253, 492)
iconInput.BorderSizePixel = 0
iconInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iconInput.Parent = inputFrame

-- Предупреждение
local Warn = Instance.new("TextLabel")
Warn.TextWrapped = true
Warn.Name = "Warn"
Warn.TextColor3 = Color3.fromRGB(255, 53, 53)
Warn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Warn.Text = "! This won't actually purchase the product, just fakes it."
Warn.Size = UDim2.new(0, 448, 0, 15)
Warn.Position = UDim2.new(0.5, 0, 0.22, 0)
Warn.AnchorPoint = Vector2.new(0.5, 0.5)
Warn.BorderSizePixel = 0
Warn.BackgroundTransparency = 1
Warn.TextXAlignment = Enum.TextXAlignment.Left
Warn.TextScaled = true
Warn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Warn.TextSize = 14
Warn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warn.Parent = actionTabFrame

-- Контейнер для кнопок (горизонтальный ряд)
local btnContainer = Instance.new("Frame")
btnContainer.Size = UDim2.new(0, 464, 0, 40)
btnContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
btnContainer.AnchorPoint = Vector2.new(0.5, 0.5)
btnContainer.BackgroundTransparency = 1
btnContainer.BorderSizePixel = 0
btnContainer.Parent = actionTabFrame

local btnLayout = Instance.new("UIListLayout")
btnLayout.Padding = UDim.new(0.02, 0)
btnLayout.SortOrder = Enum.SortOrder.LayoutOrder
btnLayout.FillDirection = Enum.FillDirection.Horizontal
btnLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
btnLayout.VerticalAlignment = Enum.VerticalAlignment.Center
btnLayout.Parent = btnContainer

-- Функция создания кнопок действия
local function createActionButton(parent, text)
    local btn = Instance.new("ImageButton")
    btn.Size = UDim2.new(0, 110, 0, 30)
    btn.ImageTransparency = 1
    btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
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

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradient.Parent = btn

    local label = Instance.new("TextLabel")
    label.TextWrapped = true
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.Text = text
    label.Size = UDim2.new(1, -10, 1, -4)
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Position = UDim2.new(0.5, 0, 0.5, 0)
    label.BorderSizePixel = 0
    label.BackgroundTransparency = 1
    label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    label.TextSize = 14
    label.TextScaled = true
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.Parent = btn

    return btn
end

local HookBtn = createActionButton(btnContainer, "Product")
local GamepassBtn = createActionButton(btnContainer, "Gamepass")
local BulkBtn = createActionButton(btnContainer, "Bulk")
local PurchaseBtn = createActionButton(btnContainer, "Purchase")

-- === Сервисы ===
local UIS = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

-- === Drag (перетаскивание окна) ===
function dragify(Frame)
    local dragToggle = nil
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + Delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + Delta.Y
        )
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch)
           and UIS:GetFocusedTextBox() == nil then
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

-- === Загрузка продуктов для Scanner ===
local function fetchDevProducts()
    for _, child in ipairs(scannerTabFrame:GetChildren()) do
        if not child:IsA("UIListLayout") then
            child:Destroy()
        end
    end

    local success, products = pcall(function()
        return MarketplaceService:GetDeveloperProductsAsync()
    end)

    if not success or not products then
        local label = Instance.new("TextLabel")
        label.Text = "Failed to load products"
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.Size = UDim2.new(0, 400, 0, 30)
        label.Position = UDim2.new(0.5, 0, 0.5, 0)
        label.AnchorPoint = Vector2.new(0.5, 0.5)
        label.BackgroundTransparency = 1
        label.TextScaled = true
        label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        label.Parent = scannerTabFrame
        return
    end

    local count = 0
    for _, product in ipairs(products) do
        count = count + 1
        local btn = Instance.new("ImageButton")
        btn.Size = UDim2.new(0, 464, 0, 30)
        btn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
        btn.BackgroundTransparency = 0.75
        btn.BorderSizePixel = 0
        btn.Parent = scannerTabFrame

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = btn

        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(154, 154, 154)
        stroke.Parent = btn

        local label = Instance.new("TextLabel")
        label.Text = string.format("%s (ID: %d) - %d Robux", product.Name, product.ProductId, product.PriceInRobux or 0)
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Size = UDim2.new(0, 400, 0, 20)
        label.Position = UDim2.new(0.05, 0, 0.5, 0)
        label.AnchorPoint = Vector2.new(0, 0.5)
        label.BackgroundTransparency = 1
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.TextScaled = true
        label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        label.Parent = btn

        btn.MouseButton1Click:Connect(function()
            ProductIDInput.Text = tostring(product.ProductId)
            -- Переключиться на Action
            ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
            ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
            ActionTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
            scannerTabFrame.Visible = false
            listenerTabFrame.Visible = false
            actionTabFrame.Visible = true
            pcall(function()
                StarterGui:SetCore("SendNotification", {
                    Title = "ID Set",
                    Text = "Product ID " .. product.ProductId .. " loaded",
                    Duration = 2
                })
            end)
        end)
    end

    if count == 0 then
        local label = Instance.new("TextLabel")
        label.Text = "No Developer Products found"
        label.TextColor3 = Color3.fromRGB(255, 255, 0)
        label.Size = UDim2.new(0, 400, 0, 30)
        label.Position = UDim2.new(0.5, 0, 0.5, 0)
        label.AnchorPoint = Vector2.new(0.5, 0.5)
        label.BackgroundTransparency = 1
        label.TextScaled = true
        label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        label.Parent = scannerTabFrame
    end
end

-- === Переключение вкладок ===
ScanTab.MouseButton1Click:Connect(function()
    ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
    ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    scannerTabFrame.Visible = true
    listenerTabFrame.Visible = false
    actionTabFrame.Visible = false
    task.spawn(fetchDevProducts)
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

-- По умолчанию показываем Scanner
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
scannerTabFrame.Visible = true
listenerTabFrame.Visible = false
actionTabFrame.Visible = false
task.spawn(fetchDevProducts)

-- === Вспомогательные функции для Action ===
local function sendNotification(title, text, duration)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 3
        })
    end)
end

local function parseIDs(input)
    local ids = {}
    input = input:gsub("%s+", "")
    for part in string.gmatch(input, "[^,]+") do
        local a, b = part:match("^(%d+)-(%d+)$")
        if a and b then
            a = tonumber(a)
            b = tonumber(b)
            if a and b and a <= b and (b - a) <= 500 then
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

local function handleSignal(signalFunc, signalName)
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

    for _, productID in ipairs(ids) do
        task.wait(math.random(50, 200) / 100)
        local success = false
        local attempt = 0
        while not success and attempt < 3 do
            attempt = attempt + 1
            local ok, err = pcall(signalFunc,
                signalName == "Gamepass" and LocalPlayer or LocalPlayer.UserId,
                productID,
                true
            )
            if ok then
                success = true
            else
                warn(string.format("Attempt %d failed for ID %d: %s", attempt, productID, err))
                if attempt < 3 then
                    task.wait(math.random(attempt * 10, attempt * 20) / 10)
                end
            end
        end
        if success then
            sendNotification("Purchase Faked", "Faked ID " .. productID, 2)
        else
            sendNotification("Error", "Failed to fake ID " .. productID, 3)
        end
    end
end

HookBtn.MouseButton1Click:Connect(function()
    handleSignal(function(uid, pid, success)
        MarketplaceService:SignalPromptProductPurchaseFinished(uid, pid, success)
    end, "Product")
end)

GamepassBtn.MouseButton1Click:Connect(function()
    handleSignal(function(player, pid, success)
        MarketplaceService:SignalPromptGamePassPurchaseFinished(player, pid, success)
    end, "Gamepass")
end)

BulkBtn.MouseButton1Click:Connect(function()
    handleSignal(function(uid, pid, success)
        MarketplaceService:SignalPromptBulkPurchaseFinished(uid, pid, success)
    end, "Bulk")
end)

PurchaseBtn.MouseButton1Click:Connect(function()
    handleSignal(function(uid, pid, success)
        MarketplaceService:SignalPromptPurchaseFinished(uid, pid, success)
    end, "Purchase")
end)

-- === Логирование ===
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

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = Response

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(154, 154, 154)
    stroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner
    stroke.Parent = Response

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradient.Parent = Response

    local nameLabel = Instance.new("TextLabel")
    nameLabel.TextWrapped = true
    nameLabel.Name = "ProductName"
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    nameLabel.Text = pName
    nameLabel.Size = UDim2.new(0, 300, 0, 15)
    nameLabel.Position = UDim2.new(0.34, 0, 0.375, 0)
    nameLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    nameLabel.BorderSizePixel = 0
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextScaled = true
    nameLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    nameLabel.TextSize = 14
    nameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.Parent = Response

    local idLabel = Instance.new("TextLabel")
    idLabel.TextWrapped = true
    idLabel.Name = "ProductID"
    idLabel.TextColor3 = Color3.fromRGB(255, 201, 37)
    idLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    idLabel.Text = tostring(purchasedId)
    idLabel.Size = UDim2.new(0, 300, 0, 15)
    idLabel.Position = UDim2.new(0.34, 0, 0.6875, 0)
    idLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    idLabel.BorderSizePixel = 0
    idLabel.BackgroundTransparency = 1
    idLabel.TextXAlignment = Enum.TextXAlignment.Left
    idLabel.TextScaled = true
    idLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    idLabel.TextSize = 14
    idLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    idLabel.Parent = Response

    -- Кнопка открытия (без функционала, просто для вида)
    local openBtn = Instance.new("ImageButton")
    openBtn.ImageTransparency = 1
    openBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    openBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    openBtn.Name = "OpenProduct"
    openBtn.Position = UDim2.new(0.948, 0, 0.5, 0)
    openBtn.Size = UDim2.new(0, 30, 0, 30)
    openBtn.BorderSizePixel = 0
    openBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    openBtn.Parent = Response
    local c1 = Instance.new("UICorner"); c1.CornerRadius = UDim.new(0,6); c1.Parent = openBtn
    local s1 = Instance.new("UIStroke"); s1.Color = Color3.fromRGB(154,154,154); s1.Parent = openBtn
    local g1 = Instance.new("UIGradient"); g1.Rotation = -90; g1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(163,163,163)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))}; g1.Parent = openBtn
    local icoOpen = Instance.new("ImageLabel")
    icoOpen.ImageColor3 = Color3.fromRGB(197,197,197)
    icoOpen.BorderColor3 = Color3.fromRGB(0,0,0)
    icoOpen.Name = "Ico"
    icoOpen.Size = UDim2.new(0,18,0,18)
    icoOpen.Position = UDim2.new(0.5,0,0.5,0)
    icoOpen.AnchorPoint = Vector2.new(0.5,0.5)
    icoOpen.Image = "rbxassetid://16884179279"
    icoOpen.BackgroundTransparency = 1
    icoOpen.ImageRectSize = Vector2.new(48,48)
    icoOpen.ImageRectOffset = Vector2.new(690,702)
    icoOpen.BorderSizePixel = 0
    icoOpen.BackgroundColor3 = Color3.fromRGB(255,255,255)
    icoOpen.Parent = openBtn

    -- Кнопка копирования ID
    local copyBtn = Instance.new("ImageButton")
    copyBtn.ImageTransparency = 1
    copyBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    copyBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    copyBtn.Name = "CopyID"
    copyBtn.Position = UDim2.new(0.871, 0, 0.5, 0)
    copyBtn.Size = UDim2.new(0, 30, 0, 30)
    copyBtn.BorderSizePixel = 0
    copyBtn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    copyBtn.Parent = Response
    local c2 = Instance.new("UICorner"); c2.CornerRadius = UDim.new(0,6); c2.Parent = copyBtn
    local s2 = Instance.new("UIStroke"); s2.Color = Color3.fromRGB(154,154,154); s2.Parent = copyBtn
    local g2 = Instance.new("UIGradient"); g2.Rotation = -90; g2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(163,163,163)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))}; g2.Parent = copyBtn
    local icoCopy = Instance.new("ImageLabel")
    icoCopy.ImageColor3 = Color3.fromRGB(197,197,197)
    icoCopy.BorderColor3 = Color3.fromRGB(0,0,0)
    icoCopy.Name = "Ico"
    icoCopy.Size = UDim2.new(0,26,0,26)
    icoCopy.AnchorPoint = Vector2.new(0.5,0.5)
    icoCopy.Image = "rbxassetid://16884178261"
    icoCopy.BackgroundTransparency = 1
    icoCopy.ImageRectSize = Vector2.new(36,36)
    icoCopy.Position = UDim2.new(0.5,0,0.5,0)
    icoCopy.BorderSizePixel = 0
    icoCopy.BackgroundColor3 = Color3.fromRGB(255,255,255)
    icoCopy.Parent = copyBtn

    copyBtn.MouseButton1Click:Connect(function()
        pcall(function()
            setclipboard(tostring(purchasedId))
            sendNotification("Copied", "ID copied", 2)
        end)
    end)

    while #listenerTabFrame:GetChildren() > 100 do
        listenerTabFrame:GetChildren()[1]:Destroy()
    end
end

-- === Слушатели событий Marketplace ===
MarketplaceService.PromptProductPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
    addLog(LocalPlayer.Name, purchasedId, wasPurchased)
end)

MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, gamePassId, wasPurchased)
    addLog(LocalPlayer.Name, gamePassId, wasPurchased)
end)

MarketplaceService.PromptBulkPurchaseFinished:Connect(function(userId, productId, wasPurchased)
    addLog(LocalPlayer.Name, productId, wasPurchased)
end)

MarketplaceService.PromptPurchaseFinished:Connect(function(userId, productId, wasPurchased)
    addLog(LocalPlayer.Name, productId, wasPurchased)
end)

print("Product Faker loaded. Action tab fixed, window scaled down, all elements arranged.")
