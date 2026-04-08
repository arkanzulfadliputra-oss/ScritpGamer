----edit as you like but if it works it's not my fault
local AchievementLoader = loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/Achievements"))()
local ModName = "PutYourModName"
AchievementLoader.Load(ModName)
-- 
local Test2 = {
    id = 1,
    Title = "Title2",
    Desc = "Desc2",
    Reason = "Reason2",
    Image = "0", -- If the Image is from github put ?raw=true (can be robloxID Numbers)
}
AchievementLoader.Get(Test2,ModName)
