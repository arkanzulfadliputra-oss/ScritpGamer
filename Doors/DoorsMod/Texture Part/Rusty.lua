spawn(function()
    while true do
        wait(0.5)
        pcall(function()
            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") and not v:IsDescendantOf(game.Players.LocalPlayer.Character) then
                    if v.Name ~= "Seek" and v.Name ~= "Figure" and v.Name ~= "RushMoving" and v.Name ~= "AmbushMoving" and v.Name ~= "Screech" and v.Name ~= "Glitch" then
                        v.Material = Enum.Material.Sandstone
                        v.BrickColor = BrickColor.new("Dark orange")
                        v.Color = Color3.new(0.5, 0.3, 0.1)
                    end
                end
            end
        end)
    end
end)
