QBCore = exports['qb-core']:GetCoreObject()
th = false
nv = false

local function goggleon()
    local ped = PlayerPedId()
	TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
	Wait(600)
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.0, "nv", 0.15)
	SetPedPropIndex(ped, 0, 147, 0, 0)
end

local function goggleoff()
	local ped = PlayerPedId()
	TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
	Wait(700)
	SetPedPropIndex(ped, 0, 148, 0, 0)
end


RegisterNetEvent('lx-vision:nightvision')
AddEventHandler('lx-vision:nightvision', function()
	local ped = PlayerPedId()
		if nv == false then
			nv = true
			goggleon()
			SetNightvision(true)
		elseif nv == true then
			goggleoff()
			SetNightvision(false)
			nv = false
		end
end)

RegisterNetEvent('lx-vision:thermalvision')
AddEventHandler('lx-vision:thermalvision', function()
	local ped = PlayerPedId()
		if th == false then
			th = true
			goggleon()
			SetSeethrough(true)
			SeethroughSetHiLightIntensity(1.0)
			SeethroughSetNoiseAmountMax(0.0)
			SeethroughSetHeatscale(1, 0.25)
			SeethroughSetFadeStartDistance(0.0)
			SeethroughSetMaxThickness(0.0)
		elseif th == true then
			goggleoff()
			SetSeethrough(false)
			SeethroughReset()
			th = false
		end
end)

