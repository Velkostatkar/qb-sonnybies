local QBCore = exports['qb-core']:GetCoreObject()




players = {}

RegisterServerEvent("qb-sonnybies:newplayer")
AddEventHandler("qb-sonnybies:newplayer", function(id)
    players[source] = id
    TriggerClientEvent("qb-sonnybies:playerupdate", -1, players)
end)

AddEventHandler("playerDropped", function(reason)
    players[source] = nil
    TriggerClientEvent("qb-sonnybies:clear", source)
    TriggerClientEvent("qb-sonnybies:playerupdate", -1, players)
end)



RegisterServerEvent('qb-sonnybies:partloot')
AddEventHandler('qb-sonnybies:partloot', function(listKey)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local PartAmount = Config.PartItemAmount
    local item = math.random(1, #Config.ZombieParts)
    for k,v in pairs(Config.ZombieParts) do
        if item == k then
            Player.Functions.AddItem(v, PartAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v], 'add')
			TriggerClientEvent("QBCore:Notify", src, 'You found '..PartAmount..'x ' .. QBCore.Shared.Items[v].label ..' ','success')
        end
    end

end)



RegisterServerEvent('qb-sonnybies:moneyloot')
AddEventHandler('qb-sonnybies:moneyloot', function()
    local Player = QBCore.Functions.GetPlayer(source)
	local random = math.random(10, 100)
    Player.Functions.AddMoney("cash",random,"zombie-loot")
    TriggerClientEvent("QBCore:Notify", source, 'You found $' .. random .. ' dollars','success')
end)


RegisterServerEvent('qb-sonnybies:itemloot')
AddEventHandler('qb-sonnybies:itemloot', function(listKey)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local ItemAmount = Config.ItemAmount
    local item = math.random(1, #Config.Items)
    for k,v in pairs(Config.Items) do
        if item == k then
            Player.Functions.AddItem(v, ItemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v], 'add')
			TriggerClientEvent("QBCore:Notify", src, 'You found '..ItemAmount..'x '..QBCore.Shared.Items[v].label..' ','success')
        end
    end
	
    if Config.AddtionalItem then
        local Luck = math.random(1, 8)
        local Odd = math.random(1, 8)
        if Luck == Odd then
            Player.Functions.AddItem(Config.AddItem, Config.AddItemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.AddItem], 'add')
        end
    end
end)
