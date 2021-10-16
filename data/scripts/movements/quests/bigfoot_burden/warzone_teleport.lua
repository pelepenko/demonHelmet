local tps = {
	[3140] = {
		storage = Storage.BigfootBurden.BossWarzone1Timer,
		newPos = Position({x = 32996, y = 31922, z = 10}), 

	},
	
	[3141] = {
		storage = Storage.BigfootBurden.BossWarzone2Timer,
		newPos = Position({x = 33011, y = 31943, z = 11}), 
	},
	
	[3142] = {
		storage = Storage.BigfootBurden.BossWarzone3Timer,
		newPos = Position({x = 32989, y = 31909, z = 12}), 
	},
}
local warzoneTeleport = MoveEvent()

function warzoneTeleport.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local uid = item:getUniqueId()
	local data = tps[uid]
	if not data then
		player:teleportTo(fromPosition, true)
		return true
	end
	
    local tempo = 20*60*60
    local time = os.time()
	
	if player:getStorageValue(data.storage) > os.time() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have faced this boss in the last 20 hours.")
		player:teleportTo(fromPosition, true)
		fromPosition:sendMagicEffect(CONST_ME_POFF)
	else
		player:setStorageValue(data.storage, time + tempo)
		position:sendMagicEffect(CONST_ME_TELEPORT)
		data.newPos:sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(data.newPos)
	return true
	end
	
end

warzoneTeleport:type("stepin")
for id, data in pairs(tps) do
	warzoneTeleport:uid(id)
end
warzoneTeleport:register()
