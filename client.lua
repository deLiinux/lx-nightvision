QBCore = exports['qb-core']:GetCoreObject()
th = false
nv = false

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(0)
    end
end

local function toggleGoggles(setGoggles, visionType)
    local ped = PlayerPedId()
    local isFemale = IsPedModel(ped, `mp_f_freemode_01`)
    local animDict = "mp_masks@standard_car@ds@"
    local animName = "put_on_mask"

    loadAnimDict(animDict)
    TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
    Wait(600)
    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)

    local itemIndex = setGoggles and (isFemale and Config.ItemOnFemale or Config.ItemOnMale) or (isFemale and Config.ItemOffFemale or Config.ItemOffMale)

    if Config.Enable then
        if not Config.Mask then
            SetPedPropIndex(ped, 0, itemIndex, 0, 0)
        end
        if Config.Mask then
            SetPedComponentVariation(ped, 1, itemIndex, 0, 0)
        end
    end

    if visionType == 'night' then
        SetNightvision(setGoggles)
    elseif visionType == 'thermal' then
        SetSeethrough(setGoggles)
        if setGoggles then
		Config = require('Config')
		SeethroughSetHiLightIntensity(Config.Seethrough.HiLightIntensity)
		SeethroughSetNoiseAmountMax(Config.Seethrough.NoiseAmountMax)
		SeethroughSetNoiseAmountMin(Config.Seethrough.NoiseAmountMinimum)
		SeethroughSetHeatscale(Config.Seethrough.Heatscale[1], Config.Seethrough.Heatscale[2])
		SeethroughSetFadeStartDistance(Config.Seethrough.FadeStartDistance)
		SeethroughSetMaxThickness(Config.Seethrough.MaxThickness)
        else
            SeethroughReset()
        end
    end
end

RegisterNetEvent('lx-vision:nightvision')
AddEventHandler('lx-vision:nightvision', function()
    nv = not nv
    toggleGoggles(nv, 'night')
end)

RegisterNetEvent('lx-vision:thermalvision')
AddEventHandler('lx-vision:thermalvision', function()
    th = not th
    toggleGoggles(th, 'thermal')
end)
