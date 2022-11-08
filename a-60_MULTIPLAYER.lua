------------------------------------------Entity A-60 basically just click execute at the same time as ur friend
getgenv().death = false
  while true do
    wait(830)
      
	  local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
          -- Create entity
          local entity = Creator.createEntity({
              Model = 11379072534,
              Speed = 200,
              DelayTime = 3,
              HeightOffset = 0,
              CanKill = true,
              FlickerLights = {
                  true,
                  2,
              },
              Cycles = {
                  Min = 1,
                  Max = 2,
                  WaitTime = 0.05,
              },
              CamShake = {
                  true,
                  {30, 30, 0.1, 1},
                  50,
              },
			  	    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://11394048190", -- Image1 url
            Image2 = "rbxassetid://11395251069", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
              CustomDialog = {"You died to an enitity designated as A-60", "It can Apear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."}
          })
  
          -----[[ Advanced ]]-----
          entity.Debug.OnEntitySpawned = function(entityModel)
              
          end
  
          entity.Debug.OnEntityDespawned = function(entityModel)
		      if getgenv().death == false then
              getgenv().Title = "Out of many Rebounds" --Title Here
              getgenv().Description = "Might Come back or not" --Description Here
              getgenv().Reason = "Encounter and survive the rare Entity called A-60" --Reason Here
              getgenv().BadgeId = 2129181688 --Replace Number with Your Badge ID
              getgenv().Category = 10 --You can replace the Category or dont
  
              local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
              local Achievements = debug.getupvalue(Unlock, 1)
              for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
                  v.Title = getgenv().Title
                  v.Desc = getgenv().Description
                  v.Reason = getgenv().Reason
                  v.BadgeId = getgenv().BadgeId
                  v.Category = getgenv().Category
              end
              Unlock(nil,"Join")
			  end
          end
  
          entity.Debug.OnEntityStartMoving = function(entityModel)
              
          end
  
          entity.Debug.OnEntityFinishedRebound = function(entityModel)
              
          end
  
          entity.Debug.OnDeath = function()
		  getgenv().death = true
              getgenv().Title = "Out of many Rebounds" --Title Here
              getgenv().Description = "Might Come back and did" --Description Here
              getgenv().Reason = "Encounter and dont survive the rare Entity called A-60" --Reason Here
              getgenv().BadgeId = 2129181688 --Replace Number with Your Badge ID
              getgenv().Category = 10 --You can replace the Category or dont
  
              local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
              local Achievements = debug.getupvalue(Unlock, 1)
              for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
                  v.Title = getgenv().Title
                  v.Desc = getgenv().Description
                  v.Reason = getgenv().Reason
                  v.BadgeId = getgenv().BadgeId
                  v.Category = getgenv().Category
              end
              Unlock(nil,"Join")
          end
          ---------------------------
  
          -- Run the created entity
          Creator.runEntity(entity)
end
