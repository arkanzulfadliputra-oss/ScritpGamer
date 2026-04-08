local AchievementLoader = loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/Achievements"))()
local ModName = "StopRagebait"
AchievementLoader.Load(ModName)
-- 
local Test2 = {
    id = 2,
    Title = "Stop RageBait",
    Desc = "You have used Crucifix to Rage",
    Reason = "Use Crucifix Against Rage",
    Image = "https://github.com/arkanzulfadliputra-oss/Mode-Tools/blob/main/Images/Stop%20Ragebait.png?raw=true", -- If the Image is from github put ?raw=true (can be robloxID Numbers)
}
AchievementLoader.Get(Test2,ModName)
