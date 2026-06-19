-- Отключаем состояние "Мертв"[reference:16]
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15, false)

-- Бесконечный цикл для поддержания жизни
while true do
    for i, v in pairs(workspace:GetDescendants()) do
        -- Здесь может быть ваша логика, например, "тыкание" объектов
        -- для имитации взаимодействия и обхода анти-AFK
    end
    task.wait()
end
