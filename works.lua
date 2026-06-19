-- Product Purchase Faker
-- Made by esore 2026
-- Fixed: Scanner now loads products, ID input enabled, auto-fill on product click

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

local UIListLayout_tabs = Instance.new("UIListLayout")
UIListLayout_tabs.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout_tabs.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_tabs.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_tabs.Parent = dfgsgdsf

-- Tab buttons
local ScanTab = Instance.new("ImageButton")
ScanTab.Name = "ScanTab"
ScanTab.ImageTransparency = 1
ScanTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScanTab.Size = UDim2.new(0, 100, 0, 24)
ScanTab.BorderSizePixel = 0
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
ScanTab.Parent = dfgsgdsf

local function styleTabButton(btn)
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
    label.Text = btn.Name:gsub("Tab", "")
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

styleTabButton(ScanTab)

local ListenerTab = Instance.new("ImageButton")
ListenerTab.Name = "ListenerTab"
ListenerTab.ImageTransparency = 1
ListenerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ListenerTab.Size = UDim2.new(0, 100, 0, 24)
ListenerTab.BorderSizePixel = 0
ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ListenerTab.Parent = dfgsgdsf
styleTabButton(ListenerTab)

local ActionTab = Instance.new("ImageButton")
ActionTab.Name = "ActionTab"
ActionTab.ImageTransparency = 1
ActionTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ActionTab.Size = UDim2.new(0, 100, 0, 24)
ActionTab.BorderSizePixel = 0
ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
ActionTab.Parent = dfgsgdsf
styleTabButton(ActionTab)

-- Tab frames
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

local UIListLayout_scanner = Instance.new("UIListLayout")
UIListLayout_scanner.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout_scanner.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_scanner.Parent = scannerTabFrame

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

local UIListLayout_listener = Instance.new("UIListLayout")
UIListLayout_listener.Padding = UDim.new(0.009999999776482582, 0)
UIListLayout_listener.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_listener.Parent = listenerTabFrame

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

-- Input field
local grferge = Instance.new("Frame")
grferge.Active = true
grferge.Selectable = true
grferge.BackgroundTransparency = 0.75
grferge.Name = "grferge"
grferge.Size = UDim2.new(0, 464, 0, 27)
grferge.Position = UDim2.new(0.5, 0, 0.09, 0)
grferge.AnchorPoint = Vector2.new(0.5, 0.5)
grferge.BorderColor3 = Color3.fromRGB(0, 0, 0)
grferge.BorderSizePixel = 0
grferge.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
grferge.Parent = actionTabFrame

local UICorner_input = Instance.new("UICorner")
UICorner_input.CornerRadius = UDim.new(0, 6)
UICorner_input.Parent = grferge

local UIStroke_input = Instance.new("UIStroke")
UIStroke_input.Color = Color3.fromRGB(154, 154, 154)
UIStroke_input.BorderStrokePosition = Enum.BorderStrokePosition.Inner
UIStroke_input.Parent = grferge

local UIGradient_input = Instance.new("UIGradient")
UIGradient_input.Rotation = -90
UIGradient_input.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UIGradient_input.Parent = grferge

local ProductIDInput = Instance.new("TextBox")
ProductIDInput.CursorPosition = -1
ProductIDInput.Active = true   -- теперь активен для ввода
ProductIDInput.Selectable = true
ProductIDInput.AnchorPoint = Vector2.new(0.5, 0.5)
ProductIDInput.PlaceholderText = "Product ID (e.g., 1, 5-10)"
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

local Ico_input = Instance.new("ImageLabel")
Ico_input.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ico_input.Name = "Ico"
Ico_input.Size = UDim2.new(0, 15, 0, 15)
Ico_input.Position = UDim2.new(0.033943966031074524, 0, 0.5, 0)
Ico_input.AnchorPoint = Vector2.new(0.5, 0.5)
Ico_input.Image = "rbxassetid://16167590360"
Ico_input.BackgroundTransparency = 1
Ico_input.ImageRectSize = Vector2.new(16, 16)
Ico_input.ImageRectOffset = Vector2.new(253, 492)
Ico_input.BorderSizePixel = 0
Ico_input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ico_input.Parent = grferge

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

-- Action buttons container
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

local function createActionButton(parent, text, callback)
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

    if callback then
        btn.MouseButton1Click:Connect(callback)
    end
    return btn
end

local HookBtn = createActionButton(btnContainer, "Product", nil)
local GamepassBtn = createActionButton(btnContainer, "Gamepass", nil)
local BulkBtn = createActionButton(btnContainer, "Bulk", nil)
local PurchaseBtn = createActionButton(btnContainer, "Purchase", nil)

-- Services
local UIS = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

-- Drag
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
-- SCANNER: загрузка продуктов
-- ==========================
local function fetchDevProducts()
    -- Очищаем всё, кроме UIListLayout
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
            -- Переключиться на вкладку Action
            ScanTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
            ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
            ActionTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
            scannerTabFrame.Visible = false
            listenerTabFrame.Visible = false
            actionTabFrame.Visible = true
            -- Уведомление
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
        label.Text = "No Developer Products found in this game"
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

-- ==========================
-- Tabs Handler (с обновлением Scanner)
-- ==========================
ScanTab.MouseButton1Click:Connect(function()
    ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
    ListenerTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    ActionTab.BackgroundColor3 = Color3.fromRGB(90, 99, 109)

    scannerTabFrame.Visible = true
    listenerTabFrame.Visible = false
    actionTabFrame.Visible = false

    -- Обновляем список продуктов при каждом переходе на Scanner
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

-- По умолчанию показываем Scanner и загружаем продукты
ScanTab.BackgroundColor3 = Color3.fromRGB(104, 123, 165)
scannerTabFrame.Visible = true
listenerTabFrame.Visible = false
actionTabFrame.Visible = false
task.spawn(fetchDevProducts)

-- ==========================
-- Обработчики кнопок Action
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
        -- для Bulk можно использовать количество, но пока просто 1
        -- можно добавить поле для количества, но для простоты оставим 1
        count = 1
    end

    for i = 1, count do
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
end

HookBtn.MouseButton1Click:Connect(function()
    handleSignal(function(uid, pid, success)
        MarketplaceService:SignalPromptProductPurchaseFinished(uid, pid, success)
    end, "Product", false)
end)

GamepassBtn.MouseButton1Click:Connect(function()
    handleSignal(function(player, pid, success)
        MarketplaceService:SignalPromptGamePassPurchaseFinished(player, pid, success)
    end, "Gamepass", false)
end)

BulkBtn.MouseButton1Click:Connect(function()
    handleSignal(function(uid, pid, success)
        MarketplaceService:SignalPromptBulkPurchaseFinished(uid, pid, success)
    end, "Bulk", true)
end)

PurchaseBtn.MouseButton1Click:Connect(function()
    handleSignal(function(uid, pid, success)
        MarketplaceService:SignalPromptPurchaseFinished(uid, pid, success)
    end, "Purchase", false)
end)

-- ==========================
-- Логирование
-- ==========================
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
    ProductName.Size = UDim2.new(0, 300, 0, 15)
    ProductName.Position = UDim2.new(0.34, 0, 0.375, 0)
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
    ProductID.Size = UDim2.new(0, 300, 0, 15)
    ProductID.Position = UDim2.new(0.34, 0, 0.6875, 0)
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
    OpenProduct.Position = UDim2.new(0.948, 0, 0.5, 0)
    OpenProduct.Size = UDim2.new(0, 30, 0, 30)
    OpenProduct.BorderSizePixel = 0
    OpenProduct.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    OpenProduct.Parent = Response

    local cornerOpen = Instance.new("UICorner")
    cornerOpen.CornerRadius = UDim.new(0, 6)
    cornerOpen.Parent = OpenProduct

    local strokeOpen = Instance.new("UIStroke")
    strokeOpen.Color = Color3.fromRGB(154, 154, 154)
    strokeOpen.Parent = OpenProduct

    local gradOpen = Instance.new("UIGradient")
    gradOpen.Rotation = -90
    gradOpen.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradOpen.Parent = OpenProduct

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

    local CopyID = Instance.new("ImageButton")
    CopyID.ImageTransparency = 1
    CopyID.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CopyID.AnchorPoint = Vector2.new(0.5, 0.5)
    CopyID.Name = "CopyID"
    CopyID.Position = UDim2.new(0.871, 0, 0.5, 0)
    CopyID.Size = UDim2.new(0, 30, 0, 30)
    CopyID.BorderSizePixel = 0
    CopyID.BackgroundColor3 = Color3.fromRGB(90, 99, 109)
    CopyID.Parent = Response

    local cornerCopy = Instance.new("UICorner")
    cornerCopy.CornerRadius = UDim.new(0, 6)
    cornerCopy.Parent = CopyID

    local strokeCopy = Instance.new("UIStroke")
    strokeCopy.Color = Color3.fromRGB(154, 154, 154)
    strokeCopy.Parent = CopyID

    local gradCopy = Instance.new("UIGradient")
    gradCopy.Rotation = -90
    gradCopy.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163, 163, 163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    }
    gradCopy.Parent = CopyID

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
        pcall(function()
            setclipboard(tostring(purchasedId))
            sendNotification("Copied", "ID copied to clipboard", 2)
        end)
    end)

    -- Ограничиваем количество логов
    while #listenerTabFrame:GetChildren() > 100 do
        listenerTabFrame:GetChildren()[1]:Destroy()
    end
end

-- ==========================
-- Слушатели событий
-- ==========================
MarketplaceService.PromptProductPurchaseFinished:Connect(function(player, purchasedId, wasPurchased)
    print("Hook triggered for product:", purchasedId)
    addLog(LocalPlayer.Name, purchasedId, wasPurchased)
end)

MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, gamePassId, wasPurchased)
    print("Hook triggered for gamepass:", gamePassId)
    addLog(LocalPlayer.Name, gamePassId, wasPurchased)
end)

MarketplaceService.PromptBulkPurchaseFinished:Connect(function(userId, productId, wasPurchased)
    print("Hook triggered for bulk:", productId)
    addLog(LocalPlayer.Name, productId, wasPurchased)
end)

MarketplaceService.PromptPurchaseFinished:Connect(function(userId, productId, wasPurchased)
    print("Hook triggered for purchase:", productId)
    addLog(LocalPlayer.Name, productId, wasPurchased)
end)

print("Product Faker loaded. Scanner now works and auto-fills IDs.")
