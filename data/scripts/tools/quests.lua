local questsGeral = Action()

local storageID = 50349
local itemBau = 29030
local qntItem = 1
local msgQuandoAcha = "You have found a dark moon mirror."
local msgQuandoJaPegou = "Its empty."

local items = {
	{2160, 1},
	{2160, 3}
}
	
function questsGeral.onUse(player, item, fromPosition, target, toPosition, isHotkey)



	if (player:getStorageValue(storageID) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msgQuandoJaPegou)
		return true
	end

	for i = 1, #items do
		player:addItem(items[i][1])
	end
	
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msgQuandoAcha)
	
	-- player:setStorageValue(storageID, 1)
	return true
end

questsGeral:aid(50349)
questsGeral:register()
