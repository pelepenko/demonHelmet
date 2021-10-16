local mType = Game.createMonsterType("Lion Warlock")
local monster = {}

monster.description = "a Lion Warlock"
monster.experience = 6900
monster.outfit = {
	lookType = 1317,
	lookHead = 38,
	lookBody = 112,
	lookLegs = 112,
	lookFeet = 38,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8200
monster.maxHealth = 8200	
monster.race = "blood"
monster.corpse = 38800
monster.speed = 330
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 60
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}


monster.loot = {

		{name = "platinum coin", chance = 25000, maxCount = 5},
		{name = "Leather Legs",  chance = 4000},
		{name = "Violet Gem",  chance = 5000},
		{name = "Knight Legs",  chance = 8000},
		{name = "Lion Crest",  chance = 8000},
		{name = "Meat",  chance = 10000},
		{name = "Gold Ingot",  chance = 4000},
		{name = "Magma Legs",  chance = 3900}
	


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -430, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -290, maxDamage = -380, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 225, maxDamage = -320, range = 7, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -230, length = 8, spread = 3, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}
}


monster.defenses = {
	defense = 110,
	armor = 80,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 400, effect = CONST_ME_MAGIC_BLUE, target = false}
	
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
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
