
local myMod = foundation.createMod({
	Name = "Creative Mode",
	Author = "Tolakram",
	Description = "All core buildings and housing is no cost, instant build.",
	Version = "0.0.1"
});

myMod:log("Tolakram Creative Mode loading")
--myMod:logWarning("This is a warning!")
--myMod:logError("This is an error!")
--myMod:msgBox("Hello there!")


myMod:dofile("balancing.lua")

-- myMod:dofile("events.lua")

--[[
myMod:register({
	DataType = "HAPPINESS_FACTOR",
	Id = "TOLAKRAM_HAPPINESS_FACTOR",
	Value = 100.0,
	IsDecaying = false,
	TimeBeforeDecayingSeconds = 240.0,
	DecayingRatePerMinute = 0.1,
	IsCumulative = false,
	IsSolvable = true
})



myMod:register({
	DataType = "GENERAL_DATA",
	Id = "TOLAKRAM_GENERAL_DATA",
	EventList = { "TOLAKRAM_EVENT" }
})

--]]

