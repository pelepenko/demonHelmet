local mType = Game.createMonsterType("Ancient Lion Knight")
local monster = {}

monster.description = "an ancient lion knight"
monster.experience = 8100
monster.outfit = {
	lookType = 1317,
	lookHead = 57,
	lookBody = 76,
	lookLegs = 57,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 9100
monster.maxHealth = 9100
monster.race = "blood"
monster.corpse = 39011
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}


monster.loot = {
	{name = "platinum coin", chance = 100000, maxCount = 5},
	{name = "broken helmet", chance = 23750},
	{name = "combat knife", chance = 8570},
	{name = "fishbone", chance = 1250},
	{name = "ham", chance = 53750, maxCount = 3},
	{name = "studded shield", chance = 7500},
	{name = "cape", chance = 5000},
	{name = "dwarven shield", chance = 1250},
	{name = "bug meat", chance = 12500},
	{name = "life preserver", chance = 3750},
	{name = "twigs", chance = 12500},
	{name = "lion spellbook", chance = 150},
	{name = "lion hammer", chance = 150},
	{name = "lion plate", chance = 150},
	{name = "lion rod", chance = 150},
	{name = "lion longbow", chance = 150},
	{name = "lion longsword", chance = 150},
	{name = "lion spangenhelm", chance = 150},
	{name = "lion wand", chance = 150},
	{name = "lion axe", chance = 150},
	{name = "lion shield", chance = 150},
	{name = "lion amulet", chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 80, minDamage = 0, maxDamage = -1025},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_LIFEDRAIN, minDamage = -175, maxDamage = -395, length = 8, spread = 3, effect = CONST_ME_ICEAREA, target = false},
	{name ="combat", interval = 2000, chance = 70, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -700, radius = 4, effect = CONST_ME_DEATHAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 17, minDamage = -100, maxDamage = -400, radius = 4, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="fury skill reducer", interval = 2000, chance = 35, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 0, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -23},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
