-- Product Purchase Faker
-- Improved with Scanner functionality and bug fixes

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "GH78UERSGWVSTSGV"

-- ==========================
--  ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ UI
-- ==========================
local function makeLabel(parent, text, size, position, props)
    local lbl = Instance.new("TextLabel")
    lbl.TextWrapped = true
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.BorderColor3 = Color3.fromRGB(0, 0, 0)
    lbl.BorderSizePixel = 0
    lbl.BackgroundTransparency = 1
    lbl.TextScaled = true
    lbl.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    lbl.TextSize = 14
    lbl.Text = text or ""
    if size then lbl.Size = size end
    if position then lbl.Position = position end
    if props then
        for k,v in pairs(props) do
            lbl[k] = v
        end
    end
    lbl.Parent = parent
    return lbl
end

local function makeButton(parent, size, position, text, callback)
    local btn = Instance.new("ImageButton")
    btn.ImageTransparency = 1
    btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    btn.BorderSizePixel = 0
    btn.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    if size then btn.Size = size end
    if position then btn.Position = position end
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

    local lbl = makeLabel(btn, text, UDim2.new(0, 84, 0, 15), UDim2.new(0.5, 0, 0.5, 0))
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)

    if callback then
        btn.MouseButton1Click:Connect(callback)
    end
    return btn
end

local function makeFrame(parent, size, position, transparent)
    local fr = Instance.new("Frame")
    fr.BorderColor3 = Color3.fromRGB(0, 0, 0)
    fr.BorderSizePixel = 0
    fr.BackgroundTransparency = transparent and 1 or 0
    fr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    if size then fr.Size = size end
    if position then fr.Position = position end
    fr.Parent = parent
    return fr
end

local function styleButton(btn)
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
end

-- ==========================
--  ОСНОВНОЙ GUI
-- ==========================
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

local cornerMain = Instance.new("UICorner")
cornerMain.CornerRadius = UDim.new(0, 6)
cornerMain.Parent = mainbg

local strokeMain = Instance.new("UIStroke")
strokeMain.Color = Color3.fromRGB(154, 154, 154)
strokeMain.Parent = mainbg

local CloseBtn = Instance.new("ImageButton")
CloseBtn.Size = UDim2.new(0, 24, 0, 24)
CloseBtn.Position = UDim2.new(1, -30, 0, 6)
CloseBtn.Image = "rbxassetid://10747358723"
CloseBtn.BackgroundTransparency = 1
CloseBtn.Parent = mainbg
CloseBtn.MouseButton1Click:Connect(function()
    mainbg.Visible = false
end)

makeLabel(mainbg, "Product Fucker", UDim2.new(0, 197, 0, 19), UDim2.new(0.025, 0, 0.032, 0), {
    TextXAlignment = Enum.TextXAlignment.Left,
    TextScaled = true,
    FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
})

local tabBar = makeFrame(mainbg, UDim2.new(0, 489, 0, 24), UDim2.new(0.5, 0, 0.143, 0), true)
tabBar.AnchorPoint = Vector2.new(0.5, 0.5)

local tabLayout = Instance.new("UIListLayout")
tabLayout.Padding = UDim.new(0.01, 0)
tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
tabLayout.FillDirection = Enum.FillDirection.Horizontal
tabLayout.Parent = tabBar

local ScanTab = makeButton(tabBar, UDim2.new(0, 100, 0, 24), nil, "Scanner")
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
styleButton(ScanTab)

local ListenerTab = makeButton(tabBar, UDim2.new(0, 100, 0, 24), nil, "Listener")
styleButton(ListenerTab)

local ActionTab = makeButton(tabBar, UDim2.new(0, 100, 0, 24), nil, "Action")
styleButton(ActionTab)

-- Контейнер для вкладки Scanner
local scannerTabFrame = Instance.new("ScrollingFrame")
scannerTabFrame.Visible = true
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

-- Контейнер для вкладки Listener
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

-- Контейнер для вкладки Action
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

local actionLayout = Instance.new("UIListLayout")
actionLayout.Padding = UDim.new(0.01, 0)
actionLayout.SortOrder = Enum.SortOrder.LayoutOrder
actionLayout.Parent = actionTabFrame

-- Поле ввода ID
local inputFrame = makeFrame(actionTabFrame, UDim2.new(0, 464, 0, 27), nil, false)
inputFrame.BackgroundTransparency = 0.75
inputFrame.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
inputFrame.Active = true
inputFrame.Selectable = true

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
ProductIDInput.PlaceholderText = "IDs (e.g., 1, 5-10, 20)"
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

makeLabel(actionTabFrame, "! This won't actually purchase the product, This just fakes it.", UDim2.new(0, 448, 0, 15), UDim2.new(0.458, 0, 0.131, 0), {
    TextColor3 = Color3.fromRGB(255, 53, 53),
    TextXAlignment = Enum.TextXAlignment.Left,
    AnchorPoint = Vector2.new(0.5, 0.5),
    FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
})

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
local cornerCount = Instance.new("UICorner")
cornerCount.CornerRadius = UDim.new(0, 4)
cornerCount.Parent = CountInput

-- Кнопки действий с правильными координатами
local btnPosY = 0.104
local btnWidth = 121
local btnHeight = 29
local function createActionButton(text, xOffset, callback)
    local btn = makeButton(actionTabFrame, UDim2.new(0, btnWidth, 0, btnHeight), UDim2.new(0, xOffset, 0, btnPosY), text, callback)
    styleButton(btn)
    return btn
end

local HookBtn = createActionButton("Signal Product", 5, nil)
local GamepassBtn = createActionButton("Signal Gamepass", 130, nil)
local BulkBtn = createActionButton("Signal Bulk", 255, nil)
local PurchaseBtn = createActionButton("Signal Purchase", 380, nil)

-- ==========================
--  СЕРВИСЫ
-- ==========================
local UIS = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local HttpService = game:GetService("HttpService")

-- ==========================
--  DRAG (исправлено)
-- ==========================
function dragify(Frame)
    local dragToggle = nil
    local dragSpeed = 0.15
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

-- ==========================
--  ПЕРЕКЛЮЧЕНИЕ ВКЛАДОК
-- ==========================
local function selectTab(tab)
    scannerTabFrame.Visible = (tab == "Scanner")
    listenerTabFrame.Visible = (tab == "Listener")
    actionTabFrame.Visible = (tab == "Action")

    ScanTab.BackgroundColor3 = (tab == "Scanner") and Color3.fromRGB(104,123,165) or Color3.fromRGB(90,99,109)
    ListenerTab.BackgroundColor3 = (tab == "Listener") and Color3.fromRGB(104,123,165) or Color3.fromRGB(90,99,109)
    ActionTab.BackgroundColor3 = (tab == "Action") and Color3.fromRGB(104,123,165) or Color3.fromRGB(90,99,109)
end

ScanTab.MouseButton1Click:Connect(function() selectTab("Scanner") end)
ListenerTab.MouseButton1Click:Connect(function() selectTab("Listener") end)
ActionTab.MouseButton1Click:Connect(function() selectTab("Action") end)
selectTab("Scanner")

-- ==========================
--  СКАНЕР ПРОДУКТОВ (новая функциональность)
-- ==========================
local function fetchDevProducts()
    for _, child in ipairs(scannerTabFrame:GetChildren()) do
        if child:IsA("ImageButton") then
            child:Destroy()
        end
    end

    local success, products = pcall(function()
        return MarketplaceService:GetDeveloperProductsAsync()
    end)

    if not success or not products then
        makeLabel(scannerTabFrame, "Failed to load products", UDim2.new(0, 400, 0, 30), UDim2.new(0.5, 0, 0.5, 0), {
            TextColor3 = Color3.fromRGB(255, 0, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            TextScaled = true
        })
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

        local label = makeLabel(btn, string.format("%s (ID: %d) - %d Robux", product.Name, product.ProductId, product.PriceInRobux or 0),
            UDim2.new(0, 400, 0, 20), UDim2.new(0.05, 0, 0.5, 0), {
                TextXAlignment = Enum.TextXAlignment.Left,
                AnchorPoint = Vector2.new(0, 0.5),
                TextScaled = true,
                FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            })

        btn.MouseButton1Click:Connect(function()
            ProductIDInput.Text = tostring(product.ProductId)
            selectTab("Action")
            sendNotification("ID Set", "Product ID " .. product.ProductId .. " loaded", 2)
        end)
    end

    if count == 0 then
        makeLabel(scannerTabFrame, "No Developer Products found in this game", UDim2.new(0, 400, 0, 30), UDim2.new(0.5, 0, 0.5, 0), {
            TextColor3 = Color3.fromRGB(255, 255, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            TextScaled = true
        })
    end
end

-- Загружаем продукты при открытии вкладки Scanner
ScanTab.MouseButton1Click:Connect(function()
    selectTab("Scanner")
    task.spawn(fetchDevProducts)
end)

-- ==========================
--  КЭШ PRODUCT INFO
-- ==========================
local ProductCache = {}

local function getProductInfo(id, infoType)
    if ProductCache[id] then
        return unpack(ProductCache[id])
    end
    local success, info = pcall(function()
        return MarketplaceService:GetProductInfo(id, infoType or Enum.InfoType.Product)
    end)
    local result = success and {info.Name, info.PriceInRobux or 0} or {"Unknown", 0}
    ProductCache[id] = result
    return unpack(result)
end

-- ==========================
--  УВЕДОМЛЕНИЯ
-- ==========================
local function sendNotification(title, text, duration)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 3
        })
    end)
end

-- ==========================
--  ПАРСЕР ID (с ограничением диапазона)
-- ==========================
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

-- ==========================
--  ЛОГИРОВАНИЕ (с ограничением)
-- ==========================
local MAX_LOGS = 100

function addLog(playerName, productId, wasPurchased, price)
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

    local timeStr = os.date("%H:%M:%S")
    local status = wasPurchased and "✅" or "❌"

    local nameLabel = makeLabel(Response, string.format("[%s] %s %s", timeStr, playerName, status),
        UDim2.new(0, 287, 0, 15), UDim2.new(0.340, 0, 0.375, 0), {
            TextXAlignment = Enum.TextXAlignment.Left,
            AnchorPoint = Vector2.new(0.5, 0.5),
            FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        })

    local idLabel = makeLabel(Response, string.format("ID: %d | Price: %d", productId, price or 0),
        UDim2.new(0, 287, 0, 15), UDim2.new(0.340, 0, 0.688, 0), {
            TextColor3 = Color3.fromRGB(255, 201, 37),
            TextXAlignment = Enum.TextXAlignment.Left,
            AnchorPoint = Vector2.new(0.5, 0.5),
            FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        })

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradient.Parent = Response

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
    styleButton(openBtn)

    local iconOpen = Instance.new("ImageLabel")
    iconOpen.ImageColor3 = Color3.fromRGB(197, 197, 197)
    iconOpen.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconOpen.Name = "Ico"
    iconOpen.Size = UDim2.new(0, 18, 0, 18)
    iconOpen.Position = UDim2.new(0.5, 0, 0.5, 0)
    iconOpen.AnchorPoint = Vector2.new(0.5, 0.5)
    iconOpen.Image = "rbxassetid://16884179279"
    iconOpen.BackgroundTransparency = 1
    iconOpen.ImageRectSize = Vector2.new(48, 48)
    iconOpen.ImageRectOffset = Vector2.new(690, 702)
    iconOpen.BorderSizePixel = 0
    iconOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconOpen.Parent = openBtn

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
    styleButton(copyBtn)

    local iconCopy = Instance.new("ImageLabel")
    iconCopy.ImageColor3 = Color3.fromRGB(197, 197, 197)
    iconCopy.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconCopy.Name = "Ico"
    iconCopy.Size = UDim2.new(0, 26, 0, 26)
    iconCopy.AnchorPoint = Vector2.new(0.5, 0.5)
    iconCopy.Image = "rbxassetid://16884178261"
    iconCopy.BackgroundTransparency = 1
    iconCopy.ImageRectSize = Vector2.new(36, 36)
    iconCopy.Position = UDim2.new(0.5, 0, 0.5, 0)
    iconCopy.BorderSizePixel = 0
    iconCopy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconCopy.Parent = copyBtn

    copyBtn.MouseButton1Click:Connect(function()
        pcall(function()
            setclipboard(tostring(productId))
            sendNotification("Copied", "ID copied to clipboard", 2)
        end)
    end)

    while #listenerTabFrame:GetChildren() > MAX_LOGS do
        listenerTabFrame:GetChildren()[1]:Destroy()
    end
end

-- ==========================
--  ОСНОВНАЯ ЛОГИКА (с защитой от спама)
-- ==========================
local Busy = false

local function handleSignal(signalFunc, signalName, isBulk)
    if Busy then return end
    Busy = true

    local inputText = ProductIDInput.Text
    if inputText == "" then
        sendNotification("Error", "Enter at least one Product ID", 3)
        Busy = false
        return
    end
    local ids = parseIDs(inputText)
    if #ids == 0 then
        sendNotification("Error", "No valid IDs found", 3)
        Busy = false
        return
    end

    local count = 1
    if isBulk then
        count = tonumber(CountInput.Text) or 1
        if count < 1 then count = 1 end
    end

    task.wait(math.random(10, 30) / 10)

    for i = 1, count do
        for _, productID in ipairs(ids) do
            task.wait(math.random(50, 200) / 100)

            local productName, price = getProductInfo(productID)
            local playerId = LocalPlayer.UserId
            local player = LocalPlayer

            local success = false
            local attempt = 0
            while not success and attempt < 3 do
                attempt = attempt + 1
                local ok, err = pcall(signalFunc,
                    signalName == "Gamepass" and player or playerId,
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
                print(string.format("Falsely bought %s (ID: %d)", productName, productID))
                sendNotification("Purchase Faked", string.format("Faked %s (ID: %d)", productName, productID), 2)
            else
                warn(string.format("Failed to fake purchase for ID %d after 3 attempts", productID))
                sendNotification("Error", "Failed to fake purchase for ID " .. productID, 3)
            end

            addLog(productName, productID, success, price)
        end
    end

    Busy = false
end

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

-- ==========================
--  СЛУШАТЕЛИ СОБЫТИЙ (единый обработчик)
-- ==========================
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

    addLog(playerName, productId, wasPurchased, price)
end

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

print("Product Faker loaded with Scanner and bug fixes.")
