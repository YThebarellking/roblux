-- Lawnie Dupe GUI - Clean & Optimized (no accessories/person dupes)
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local UIS = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")

-- ====================== UI FACTORIES ======================
local function styleButton(btn)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(154, 154, 154)
    stroke.Thickness = 1
    stroke.Parent = btn

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(163,163,163)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
    }
    gradient.Parent = btn
end

local function createFrame(parent, size, position, color, cornerRadius)
    local frame = Instance.new("Frame")
    frame.Size = size
    frame.Position = position
    frame.BackgroundColor3 = color or Color3.fromRGB(20,20,20)
    frame.BorderSizePixel = 0
    frame.Parent = parent

    if cornerRadius then
        local corner = Instance.new("UICorner")
        corner.CornerRadius = cornerRadius
        corner.Parent = frame
    end
    return frame
end

local function createLabel(parent, text, size, position, color, textSize, font, transparency)
    local label = Instance.new("TextLabel")
    label.Size = size
    label.Position = position
    label.BackgroundTransparency = transparency or 1
    label.Text = text
    label.TextColor3 = color or Color3.fromRGB(255,255,255)
    label.TextSize = textSize or 18
    label.Font = font or Enum.Font.GothamBold
    label.Parent = parent
    return label
end

local function createButton(parent, text, size, position, callback, bgColor)
    local btn = Instance.new("TextButton")
    btn.Size = size
    btn.Position = position
    btn.BackgroundColor3 = bgColor or Color3.fromRGB(0,140,60)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.TextSize = 18
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    styleButton(btn)
    btn.MouseButton1Click:Connect(callback)
    return btn
end

-- ====================== GUI ROOT ======================
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LawnieDupe"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = createFrame(screenGui, UDim2.new(0, 320, 0, 280), UDim2.new(0.5, -160, 0.5, -140), Color3.fromRGB(20,20,20), UDim.new(0, 14))

-- Title Bar (draggable)
local titleBar = createFrame(mainFrame, UDim2.new(1, 0, 0, 45), UDim2.new(0,0,0,0), Color3.fromRGB(10,10,10), UDim.new(0,0))
createLabel(titleBar, "Lawnie Dupe", UDim2.new(1,0,1,0), UDim2.new(0,0,0,0), Color3.fromRGB(0,255,140), 20, Enum.Font.GothamBold)

local closeBtn = createButton(titleBar, "✕", UDim2.new(0,32,0,32), UDim2.new(1,-37,0,6), function() screenGui:Destroy() end, Color3.fromRGB(255,90,90))
closeBtn.BackgroundTransparency = 1  -- переопределяем для крестика

-- Status label (нижняя часть)
local statusLabel = createLabel(mainFrame, "Ready", UDim2.new(1,0,0,30), UDim2.new(0,0,0.85,0), Color3.fromRGB(180,180,180), 15, Enum.Font.Gotham)

local function setStatus(text, color)
    statusLabel.Text = text
    if color then statusLabel.TextColor3 = color end
end

-- ====================== DRAGGING ======================
local dragging = false
local dragInput, dragStart, startPos

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then dragging = false end
        end)
    end
end)
titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UIS.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- ====================== DUPE LOGIC ======================
local isDuplicating = false
local autoDupeActive = false
local autoDupeConnection = nil

local function performDupe(mode)
    if isDuplicating then return end
    isDuplicating = true

    local character = player.Character
    if not character then setStatus("No character!", Color3.fromRGB(255,80,80)) isDuplicating = false return end

    local backpack = player:FindFirstChild("Backpack")
    if not backpack then setStatus("Backpack not found!", Color3.fromRGB(255,80,80)) isDuplicating = false return end

    local itemsToClone = {}
    local allItems = backpack:GetChildren()

    if mode == "tools" then
        for _, item in ipairs(allItems) do
            if item:IsA("Tool") and item.Name ~= "Bat" then
                table.insert(itemsToClone, item:Clone())
            end
        end
    else -- "all"
        for _, item in ipairs(allItems) do
            if item.Name ~= "Bat" then
                table.insert(itemsToClone, item:Clone())
            end
        end
    end

    local equipped = character:FindFirstChildOfClass("Tool")
    if equipped and equipped.Name ~= "Bat" then
        table.insert(itemsToClone, equipped:Clone())
    end

    if #itemsToClone == 0 then
        setStatus("No items to dupe!", Color3.fromRGB(255,200,0))
        isDuplicating = false
        return
    end

    setStatus("Unwelding accessories...", Color3.fromRGB(255,200,0))
    for _, acc in ipairs(character:GetChildren()) do
        if acc:IsA("Accessory") then
            local handle = acc:FindFirstChild("Handle")
            if handle then
                for _, joint in ipairs(handle:GetChildren()) do
                    if joint:IsA("Weld") or joint:IsA("Motor6D") then
                        joint:Destroy()
                    end
                end
            end
        end
    end
    task.wait(0.3)

    setStatus("Resetting character...", Color3.fromRGB(255,200,0))
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then humanoid:Destroy() end
    character:BreakJoints()

    local newCharacter
    local success = pcall(function() newCharacter = player.CharacterAdded:Wait() end)
    if not success or not newCharacter then
        setStatus("Respawn failed!", Color3.fromRGB(255,80,80))
        isDuplicating = false
        return
    end

    -- Ждём Humanoid и Backpack
    local humanoidLoaded = false
    for _ = 1, 15 do
        if newCharacter:FindFirstChild("Humanoid") then humanoidLoaded = true break end
        task.wait(0.2)
    end
    if not humanoidLoaded then setStatus("Humanoid not loaded!", Color3.fromRGB(255,80,80)) isDuplicating = false return end

    local newBackpack = player:FindFirstChild("Backpack") or player:WaitForChild("Backpack", 5)
    if not newBackpack then setStatus("Backpack missing!", Color3.fromRGB(255,80,80)) isDuplicating = false return end

    setStatus("Giving duplicated items...", Color3.fromRGB(255,200,0))
    for _, item in ipairs(itemsToClone) do
        if item and item.Parent == nil then
            item.Parent = newBackpack
        end
    end

    local count = #itemsToClone
    setStatus(string.format("Dupe Complete! %d items", count), Color3.fromRGB(0,255,100))
    StarterGui:SetCore("SendNotification", {
        Title = "Lawnie Dupe",
        Text = string.format("Duplicated %d items!", count),
        Duration = 6
    })
    isDuplicating = false
end

-- ====================== BUTTONS ======================
local btnY = 0.15
local btnHeight = 0.12  -- отступ между кнопками

local function createDupeButton(text, mode)
    local btn = createButton(mainFrame, text, UDim2.new(0.85,0,0,40), UDim2.new(0.075,0,btnY,0), function() performDupe(mode) end)
    btnY = btnY + btnHeight
    return btn
end

createDupeButton("DUPE TOOLS", "tools")
createDupeButton("DUPE ALL (backpack)", "all")

-- Auto-dupe button (toggle)
local autoBtn = createButton(mainFrame, "AUTO-DUPE: OFF", UDim2.new(0.85,0,0,40), UDim2.new(0.075,0,btnY,0), function()
    autoDupeActive = not autoDupeActive
    if autoDupeActive then
        autoBtn.Text = "AUTO-DUPE: ON"
        autoBtn.BackgroundColor3 = Color3.fromRGB(200,100,0)
        setStatus("Auto-dupe enabled", Color3.fromRGB(255,200,0))
        if autoDupeConnection then autoDupeConnection:Disconnect() end
        autoDupeConnection = RunService.Heartbeat:Connect(function()
            if not isDuplicating then
                performDupe("tools")
            end
            task.wait(8)
        end)
    else
        autoBtn.Text = "AUTO-DUPE: OFF"
        autoBtn.BackgroundColor3 = Color3.fromRGB(0,140,60)
        setStatus("Auto-dupe disabled", Color3.fromRGB(180,180,180))
        if autoDupeConnection then
            autoDupeConnection:Disconnect()
            autoDupeConnection = nil
        end
    end
end)

-- ====================== CLEANUP ======================
screenGui.AncestryChanged:Connect(function()
    if not screenGui.Parent and autoDupeConnection then
        autoDupeConnection:Disconnect()
        autoDupeConnection = nil
    end
end)

StarterGui:SetCore("SendNotification", {
    Title = "Lawnie Dupe",
    Text = "Optimized version loaded.",
    Duration = 4
})
