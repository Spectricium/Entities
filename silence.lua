local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Silence", -- Custom name of your entity
   Model = "rbxassetid://11363980241", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = True,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        5, -- Time (seconds)
    },
    Cycles = {
	    Min = 5,
	    Max = 10,
	    WaitTime = 4,
 	},
	CamShake = {
	    true, -- Enabled
	    {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
	    30, -- Shake start distance (from Entity to you)
	},
   	Jumpscare = {
	    true, -- Enabled ('false' if you don't want jumpscare)
	    {
		    Image1 = "rbxassetid://11158773538", -- Image1 url
    	    Image2 = "rbxassetid://11158773538", -- Image2 url
    	    Shake = true,
    	    Sound1 = {
	        	0, -- SoundId
 	        	{ Volume = 0.5 }, -- Sound properties
    	    },
    	    Sound2 = {
		        0, -- SoundId
    	        { Volume = 0.5 }, -- Sound properties
    	    },
    	    Flashing = {
	    	        true, -- Enabled
        	        Color3.fromRGB(100, 0, 100), -- Color
        	    },
    	    Tease = {
	    	        true, -- Enabled ('false' if you don't want tease)
        	        Min = 3,
        	        Max = 6,
        	    },
       	},
    },
    CustomDialog = {"You died to Silence...", "The lights will flicker once it spawns like how any other entity does.", "If it does, hide! even though it is slow don't get distracted or you might perish."}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityModel)
	    print("Entity has spawned:", entityModel)
	end

	entity.Debug.OnEntityDespawned = function(entityModel)
    	print("Entity has despawned:", mentityModelodel)
	end

	entity.Debug.OnEntityStartMoving = function(entityModel)
	    print("Entity has started moving:", entityModel)
	end

	entity.Debug.OnEntityFinishedRebound = function(entityModel)
    	print("Entity finished rebound:", entityModel)
	end

	entity.Debug.OnDeath = function()
    	warn("You died.")
	end
	------------------------

	-- Run the created entity
	Creator.runEntity(entity)
