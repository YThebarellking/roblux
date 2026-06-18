-- Lawnie Dupe GUI - Highly Improved Reliability
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local UIS = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")

-- GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LawnieDupe"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 200)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 14)
uiCorner.Parent = mainFrame

-- Title Bar
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

-- Improved Dragging (with proper touch support)
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
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
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
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 32, 0, 32)
closeBtn.Position = UDim2.new(1, -37, 0, 6)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "✕"
closeBtn.TextColor3 = Color3.fromRGB(255, 90, 90)
closeBtn.TextSize = 20
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = titleBar

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Dupe Button
local dupeButton = Instance.new("TextButton")
dupeButton.Size = UDim2.new(0.85, 0, 0, 65)
dupeButton.Position = UDim2.new(0.075, 0, 0.32, 0)
dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
dupeButton.Text = "DUPE INVENTORY"
dupeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
dupeButton.TextSize = 22
dupeButton.Font = Enum.Font.GothamBold
dupeButton.Parent = mainFrame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 12)
btnCorner.Parent = dupeButton

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 30)
statusLabel.Position = UDim2.new(0, 0, 0.78, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "Ready"
statusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
statusLabel.TextSize = 15
statusLabel.Font = Enum.Font.Gotham
statusLabel.Parent = mainFrame

-- ==================== IMPROVED DUPE LOGIC ====================
local isDuplicating = false  -- Debounce

local function setStatus(text, color)
    statusLabel.Text = text
    if color then
        statusLabel.TextColor3 = color
    end
end

local function dupeInventory()
    if isDuplicating then return end
    isDuplicating = true
    dupeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    dupeButton.Text = "Duplicating..."

    setStatus("Collecting tools...", Color3.fromRGB(255, 200, 0))

    local character = player.Character
    if not character then
        setStatus("No character!", Color3.fromRGB(255, 80, 80))
        isDuplicating = false
        dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        dupeButton.Text = "DUPE INVENTORY"
        return
    end

    local backpack = player:FindFirstChild("Backpack")
    if not backpack then
        setStatus("Backpack not found!", Color3.fromRGB(255, 80, 80))
        isDuplicating = false
        dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        dupeButton.Text = "DUPE INVENTORY"
        return
    end

    -- Collect all tools (except "Bat")
    local toolsToClone = {}
    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name ~= "Bat" then
            table.insert(toolsToClone, tool:Clone())
        end
    end

    local equipped = character:FindFirstChildOfClass("Tool")
    if equipped and equipped.Name ~= "Bat" then
        table.insert(toolsToClone, equipped:Clone())
    end

    if #toolsToClone == 0 then
        setStatus("No tools to dupe!", Color3.fromRGB(255, 200, 0))
        isDuplicating = false
        dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        dupeButton.Text = "DUPE INVENTORY"
        return
    end

    setStatus("Unwelding accessories...", Color3.fromRGB(255, 200, 0))
    -- Unweld accessories (prevents attachment issues after respawn)
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

    wait(0.5)  -- Small delay for unwelding to take effect

    setStatus("Resetting character...", Color3.fromRGB(255, 200, 0))

    -- Kill the character to trigger respawn
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:Destroy()
    end
    character:BreakJoints()

    -- Wait for new character
    local newCharacter
    local success, err = pcall(function()
        newCharacter = player.CharacterAdded:Wait()
    end)
    if not success or not newCharacter then
        setStatus("Respawn failed!", Color3.fromRGB(255, 80, 80))
        isDuplicating = false
        dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        dupeButton.Text = "DUPE INVENTORY"
        return
    end

    -- Wait for Humanoid to fully load
    local humanoidLoaded = false
    for _ = 1, 10 do  -- timeout after ~2 seconds
        if newCharacter:FindFirstChild("Humanoid") then
            humanoidLoaded = true
            break
        end
        task.wait(0.2)
    end
    if not humanoidLoaded then
        setStatus("Humanoid not loaded!", Color3.fromRGB(255, 80, 80))
        isDuplicating = false
        dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        dupeButton.Text = "DUPE INVENTORY"
        return
    end

    -- Wait for Backpack to exist
    local newBackpack = player:FindFirstChild("Backpack")
    if not newBackpack then
        newBackpack = player:WaitForChild("Backpack", 5)
    end
    if not newBackpack then
        setStatus("Backpack missing!", Color3.fromRGB(255, 80, 80))
        isDuplicating = false
        dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
        dupeButton.Text = "DUPE INVENTORY"
        return
    end

    setStatus("Giving duplicated tools...", Color3.fromRGB(255, 200, 0))

    -- Place clones into new backpack
    for _, clonedTool in ipairs(toolsToClone) do
        if clonedTool and clonedTool.Parent == nil then
            clonedTool.Parent = newBackpack
            task.wait(0.15)
        end
    end

    setStatus("Dupe Complete! Tools Saved", Color3.fromRGB(0, 255, 100))

    StarterGui:SetCore("SendNotification", {
        Title = "Lawnie Dupe",
        Text = string.format("Successfully duplicated %d tools!", #toolsToClone),
        Duration = 8
    })

    -- Reset button state
    isDuplicating = false
    dupeButton.BackgroundColor3 = Color3.fromRGB(0, 140, 60)
    dupeButton.Text = "DUPE INVENTORY"
end

-- Click handler with debounce
dupeButton.MouseButton1Click:Connect(dupeInventory)

-- Welcome notification
StarterGui:SetCore("SendNotification", {
    Title = "Lawnie Dupe",
    Text = "Improved reliability version loaded.",
    Duration = 5
})
