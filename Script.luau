-- Lawnie Dupe GUI - Enhanced with Multiple Dupe Modes + Auto-Dupe
-- (No accessory/person duplication – only tools/items)
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local UIS = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")

-- GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LawnieDupe"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 280)  -- taller for extra buttons
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -140)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 14)
uiCorner.Parent = mainFrame

-- Title Bar (draggable)
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 45)
titleBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Lawnie Dupe"
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 140)
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 32, 0, 32)
closeBtn.Position = UDim2.new(1, -37, 0, 6)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "✕"
closeBtn.TextColor3 = Color3.fromRGB(255, 90, 90)
closeBtn.TextSize = 20
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = titleBar
closeBtn.MouseButton1Click:Connect(function() screenGui:Destroy() end)

-- Dragging logic (same as before)
local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil
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

-- Status label
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 30)
statusLabel.Position = UDim2.new(0, 0, 0.85, 0)  -- bottom
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "Ready"
statusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
statusLabel.TextSize = 15
statusLabel.Font = Enum.Font.Gotham
statusLabel.Parent = mainFrame

-- Helper function to update status
local function setStatus(text, color)
    statusLabel.Text = text
    if color then statusLabel.TextColor3 = color end
end

-- ========== BUTTONS ==========
local buttonY = 0.15  -- starting Y position

local function createButton(text, yOffset, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.85, 0, 0, 40)
    btn.Position = UDim2.new(0.075, 0, yOffset, 0)
    btn.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 18
    btn.Font = Enum.Font.GothamBold
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = btn
    btn.Parent = mainFrame
    btn.MouseButton1Click:Connect(callback)
    return btn
end

-- We'll store button references for toggling auto-dupe
local autoDupeBtn = nil
local autoDupeActive = false
local autoDupeConnection = nil

-- ========== CORE DUPE FUNCTION (improved) ==========
local isDuplicating = false

local function performDupe(mode)  -- mode: "tools" or "all"
    if isDuplicating then return end
    isDuplicating = true

    local character = player.Character
    if not character then
        setStatus("No character!", Color3.fromRGB(255,80,80))
        isDuplicating = false
        return
    end

    local backpack = player:FindFirstChild("Backpack")
    if not backpack then
        setStatus("Backpack not found!", Color3.fromRGB(255,80,80))
        isDuplicating = false
        return
    end

    -- Collect tools (and optionally other items in backpack)
    local itemsToClone = {}
    local allItems = backpack:GetChildren()
    if mode == "tools" then
        -- only Tools, exclude "Bat"
        for _, item in ipairs(allItems) do
            if item:IsA("Tool") and item.Name ~= "Bat" then
                table.insert(itemsToClone, item:Clone())
            end
        end
    else -- "all" – clone everything except maybe Bat?
        for _, item in ipairs(allItems) do
            if item.Name ~= "Bat" then  -- but if there are non-tool items, clone them too
                table.insert(itemsToClone, item:Clone())
            end
        end
    end

    -- Also equipped tool
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
    -- Unweld accessories to avoid attachment glitches
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
    local success = pcall(function()
        newCharacter = player.CharacterAdded:Wait()
    end)
    if not success or not newCharacter then
        setStatus("Respawn failed!", Color3.fromRGB(255,80,80))
        isDuplicating = false
        return
    end

    -- Wait for Humanoid and Backpack
    local humanoidLoaded = false
    for _ = 1, 15 do  -- timeout ~3s
        if newCharacter:FindFirstChild("Humanoid") then
            humanoidLoaded = true
            break
        end
        task.wait(0.2)
    end
    if not humanoidLoaded then
        setStatus("Humanoid not loaded!", Color3.fromRGB(255,80,80))
        isDuplicating = false
        return
    end

    local newBackpack = player:FindFirstChild("Backpack")
    if not newBackpack then
        newBackpack = player:WaitForChild("Backpack", 5)
    end
    if not newBackpack then
        setStatus("Backpack missing!", Color3.fromRGB(255,80,80))
        isDuplicating = false
        return
    end

    setStatus("Giving duplicated items...", Color3.fromRGB(255,200,0))

    -- Fast insertion: no waits between clones
    for _, clonedItem in ipairs(itemsToClone) do
        if clonedItem and clonedItem.Parent == nil then
            clonedItem.Parent = newBackpack
        end
    end

    local count = #itemsToClone
    setStatus(string.format("Dupe Complete! %d items", count), Color3.fromRGB(0,255,100))

    StarterGui:SetCore("SendNotification", {
        Title = "Lawnie Dupe",
        Text = string.format("Successfully duplicated %d items!", count),
        Duration = 6
    })

    isDuplicating = false
end

-- ========== BUTTON HANDLERS ==========
local btnDupeTools = createButton("DUPE TOOLS", 0.15, function()
    performDupe("tools")
end)

local btnDupeAll = createButton("DUPE ALL (backpack)", 0.15 + 0.12, function()
    performDupe("all")
end)

-- Auto-Dupe button (toggle)
autoDupeBtn = createButton("AUTO-DUPE: OFF", 0.15 + 0.24, function()
    autoDupeActive = not autoDupeActive
    if autoDupeActive then
        autoDupeBtn.Text = "AUTO-DUPE: ON"
        autoDupeBtn.BackgroundColor3 = Color3.fromRGB(200, 100, 0)
        setStatus("Auto-dupe enabled", Color3.fromRGB(255,200,0))
        -- start auto loop
        if autoDupeConnection then autoDupeConnection:Disconnect() end
        autoDupeConnection = RunService.Heartbeat:Connect(function()
            -- Perform dupe every ~8 seconds
            if not isDuplicating then
                performDupe("tools")  -- default to tools mode
            end
            task.wait(8)
        end)
    else
        autoDupeBtn.Text = "AUTO-DUPE: OFF"
        autoDupeBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        setStatus("Auto-dupe disabled", Color3.fromRGB(180,180,180))
        if autoDupeConnection then
            autoDupeConnection:Disconnect()
            autoDupeConnection = nil
        end
    end
end)

-- (Optional) A "Fast Dupe" button that uses the same "all" mode but without status updates? Actually we already have fast insertion.

-- Welcome notification
StarterGui:SetCore("SendNotification", {
    Title = "Lawnie Dupe",
    Text = "Enhanced with multiple modes and auto-dupe.",
    Duration = 5
})

-- Cleanup on GUI destroy
screenGui.AncestryChanged:Connect(function()
    if not screenGui.Parent then
        if autoDupeConnection then autoDupeConnection:Disconnect() end
    end
end)
