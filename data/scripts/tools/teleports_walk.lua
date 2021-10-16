local config = 
	{
	-- tp 1 e 1
	[14520] = {telePrem = Position(33533, 31444, 8)},
	[14521] = {telePrem = Position(33546, 31444, 8)},
	-- tp 2 e 2
	[14522] = {telePrem = Position(33483, 31452, 9)},
	[14523] = {telePrem = Position(33486, 31435, 8)},
	-- tp 3 e 3
	[14524] = {telePrem = Position(33542, 31411, 9)},
	[14525] = {telePrem = Position(33529, 31410, 9)},
	-- tp 4 e 4
	[14526] = {telePrem = Position(33551, 31440, 9)},
	[14527] = {telePrem = Position(33537, 31440, 9)},
	-- tp 5 e 5
	[14528] = {telePrem = Position(33572, 31467, 9)},
	[14529] = {telePrem = Position(33556, 31467, 9)},
	
	-- volta pra edron feaster
	[14532] = {telePrem = Position(33220, 31705, 7)},

	-- infernal soul war
	[14533] = {telePrem = Position(34012, 31056, 9)},

	-- dream courts elfs gelo e fogo estrela no meio 4 tp
	[14534] = {telePrem = Position(32208, 32093, 13)},

	-- exit lion sanctun bosses
	[61120] = {telePrem = Position(33123, 32234, 12)},

	-- exit the thaian
	[62122] = {telePrem = Position(33876, 31888, 8)}
	}

local teleportWalk = MoveEvent()

function teleportWalk.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	
	local teleport = config[item.actionid]
	if not teleport then
		return true
	end
	
		position:sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(teleport.telePrem)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
end
teleportWalk:type("stepin")
teleportWalk:aid(14520,14521,14522,14523,14524,14525,14526,14527,14528,14529,14532,61120,14533,14534,62122)
teleportWalk:register()
