Config = {}

Config.Enable = true
Config.Mask = false             -- Set to true if goggles are masks, false if they are props


Config.ItemOnMale = 147         -- Item number for goggles model when equipped for male character, -1 to remove it
Config.ItemOffMale = 148        -- Item number for goggles model when unequipped for male character, -1 to remove it

Config.ItemOnFemale = -1        -- Item number for goggles model when equipped for female character, -1 to remove it
Config.ItemOffFemale = -1       -- Item number for goggles model when unequipped for female character, -1 to remove it


Config.Seethrough = {           -- THERMAL OPTIONS
    HiLightIntensity = 1.0,     -- Controls the intensity of the highlight for entities in thermal vision
    NoiseAmountMax = 0.0,       -- Controls the maximum amount of noise in the thermal vision
    NoiseAmountMin = 0.0,       -- Controls the minimum amount of noise in the thermal vision
    Heatscale = {1, 0.25},      -- Controls the heat scale of the thermal vision. The first value is the heat scale index, and the second value is the heat scale value
    FadeStartDistance = 0.0,    -- Controls the distance at which the thermal vision starts to fade
    MaxThickness = 0.0,         -- Controls the maximum thickness of the thermal vision
}
