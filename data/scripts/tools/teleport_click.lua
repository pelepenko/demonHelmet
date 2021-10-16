local config = 
	{
	-- lion sanctun statues
	[61200] = {telePrem = Position(33090, 32281, 12)},
	[61201] = {telePrem = Position(33092, 32316, 11)},
	
	[63202] = {telePrem = Position(33118, 32252, 10)},
	[63203] = {telePrem = Position(33137, 32354, 5)},
	
	
	-- teleport inqui
	[7494] = {telePrem = Position(32322, 32247, 9)},

	-- library
	[61205] = {telePrem = Position(32516, 32535, 12)},

	-- cobra volta
	[30256] = {telePrem = Position(33313, 32647, 6)},

	-- gazer boss
	[63203] = {telePrem = Position(33640, 32561, 13)},

	-- boss infernal portal
	[62242] = {telePrem = Position(33780, 31601, 14)},

	-- bounac
	[65535] = {telePrem = Position(32423, 32448, 7)},
	[61202] = {telePrem = Position(33184, 31755, 7)},

	-- rascacoon
	[62241] = {telePrem = Position(33775, 31348, 7)},
	[62240] = {telePrem = Position(32942, 32030, 7)}


	}

local teleportClick = Action()

function teleportClick.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local teleport = config[item.actionid]
	if not teleport then
		return true
	end
	
	player:teleportTo(teleport.telePrem)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	
end


teleportClick:aid(61200,61201,61202,61205,65535,62240,62241,30256,62242,7494,63202,63203,63204)
teleportClick:register()
