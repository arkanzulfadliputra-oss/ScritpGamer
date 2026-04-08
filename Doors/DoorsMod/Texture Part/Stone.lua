spawn(function()
    while true do
        wait(0.5)
        pcall(function()
            local player = game.Players.LocalPlayer
            local currentRooms = workspace:FindFirstChild("CurrentRooms")

            if not currentRooms then return end

            for _, v in pairs(currentRooms:GetDescendants()) do
                
                local isEntity = false
                local check = v

                while check do
                    if check.Name == "Seek"
                    or check.Name == "Figure"
                    or check.Name == "RushMoving"
                    or check.Name == "AmbushMoving"
                    or check.Name == "Screech"
                    or check.Name == "Glitch" then
                        isEntity = true
                        break
                    end
                    check = check.Parent
                end

                if v:IsA("BasePart")
                and not v:IsDescendantOf(player.Character)
                and not isEntity then

                    v.Material = Enum.Material.Slate
                    v.BrickColor = BrickColor.new("Dark stone grey")
                    v.Color = Color3.new(0.3, 0.3, 0.3)

                    for _, c in pairs(v:GetChildren()) do
                        if c:IsA("Decal") or c:IsA("Texture") then
                            c:Destroy()
                        end
                    end
                end

                -- ===== HAPUS LANGSUNG SIGN & PLATE =====
                if v.Name == "Sign" or v.Name == "Plate" then
                    v:Destroy()
                end

            end
        end)
    end
end)
