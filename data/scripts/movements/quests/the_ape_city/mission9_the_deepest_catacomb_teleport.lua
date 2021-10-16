local config = {
	amphoraPositions = {
		Position(32792, 32527, 10),
		Position(32823, 32525, 10),
		Position(32876, 32584, 10),
		Position(32744, 32586, 10)
	},
	brokenAmphoraId = 2252 --4997
}

local mission9TheDeepestCatacombTeleport = MoveEvent()

function mission9TheDeepestCatacombTeleport.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

		player:teleportTo({x = 32885, y = 32632, z = 11})
		position:sendMagicEffect(CONST_ME_TELEPORT)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true

end

mission9TheDeepestCatacombTeleport:type("stepin")
mission9TheDeepestCatacombTeleport:uid(9257, 9258)
mission9TheDeepestCatacombTeleport:register()
