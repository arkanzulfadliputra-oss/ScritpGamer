local Spawner = loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/DoorEntitySpawn%2BSource'))()


-- Create entity
local entity = Spawner.createEntity({
    CustomName = "", -- Custom name of your entity
    Model = "rbxassetid://115367508697896", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    NoDieOnCrouching = false,
    NoHiding = false,
    AntiCrucifix = false,
    KillRange = 0,
    OneRoom = false,
    DieOnLook = false,
    BreakLights = true,
    BackwardsMovement = false,
     MovementDeath = {
        true, -- Turned On?
        '1',  --- '1'= 'Instant Without Being Looked out' | '2' = 'With Being Looked At'
    },
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Type = "2", -- "Normal" or 1 | "Pop" or 2 | "endlessdoorsrebound" or "Rebound" or 3 | More coming Soon
            Image1 = "rbxassetid://95664951762463", -- Image1 url
            Image2 = "rbxassetid://95664951762463", -- Image2 url
            Shake = true,
            Sound1 = {
                "https://github.com/MuhXd/Models/blob/main/video0-1-3.mp3?raw=true", -- SoundId Link or Roblox ID
                { Volume = 5 }, -- Sound properties
            },
            Sound2 = {
                "https://github.com/MuhXd/Models/blob/main/video0-1-3.mp3?raw=true", -- SoundId Link or Roblox ID
                { Volume = 3 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    Color = 'CuriousLight', -- CuriousLight ( Yellow ) | GuidingLight ( Blue )
    DiffrentMessages = true,
    CustomDialog = {  
        {"You Die By Rage", "You Have to Hide 10 Times", "custom death", "message here."}, -- Death Messages
        {"Stop Dieing"},
        {"Bruh", "Use what you have learned from Rush!"},
        {"It seems like Template is causing quite the ruckus...", "Hide in a closet or bed as quickly as possible!"},
         {"I have told You What to do", "YOU JUST HAVE A SKILL ISSUE"}
    }
})

-----[[ Advanced Sctipting ]]-----

entity.Debug.OnEntityMoving = function(Invincible,Hiding,plrCollisionPoint)
print("Invincible: "..tostring(Invincible))
print("Player to Entity Collision (None hiding Point): "..tostring(plrCollisionPoint))
print("Hiding: "..tostring(Hiding))
end
       
entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned:")
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned:")
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
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", "has entered room:",room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:")
end

entity.Debug.OnDeath = function()
    warn("Player has died.")
end

------------------------

-- Run the created entity
Spawner.runEntity(entity)
