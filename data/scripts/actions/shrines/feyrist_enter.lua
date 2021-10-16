local enterPositions = {
	{ actionId = 15003, toPos = Position(33541, 32207, 7), effect = CONST_ME_SMALLPLANTS },
	{ actionId = 15001, toPos = Position(33431, 32275, 7), effect = CONST_ME_ICEATTACK },
	{ actionId = 15004, toPos = Position(33528, 32301, 4), effect = CONST_ME_ENERGYHIT },
	{ actionId = 15002, toPos = Position(33585, 32261, 7), effect = CONST_ME_MAGIC_RED }
}

local feyristEnter = Action()

function feyristEnter.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	for _, feyrist in pairs(enterPositions) do
		if item.actionid == feyrist.actionId then
			player:teleportTo(feyrist.toPos)
			player:getPosition():sendMagicEffect(feyrist.effect)
			return true
		end
	end
end

feyristEnter:aid(15003, 15001, 15004, 15002)
feyristEnter:register()
