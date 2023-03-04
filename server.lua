local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("nightvision", function(source)
    local player = QBCore.Functions.GetPlayer(source)
        if player ~= nil then 
            TriggerClientEvent("lx-vision:nightvision", source)
        end 
end)

QBCore.Functions.CreateUseableItem("thermalvision", function(source)
    local player = QBCore.Functions.GetPlayer(source)
        if player ~= nil then 
            TriggerClientEvent("lx-vision:thermalvision", source)
        end 
end)

