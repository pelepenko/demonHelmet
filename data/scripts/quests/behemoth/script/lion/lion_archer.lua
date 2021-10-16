local mType = Game.createMonsterType("Lion Archer")
local monster = {}

monster.description = "a Lion Archer"
monster.experience = 6900
monster.outfit = {
	lookType = 1316,
	lookHead = 57,
	lookBody = 57,
	lookLegs = 57,
	lookFeet = 57,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 7300
monster.maxHealth = 7300
monster.race = "blood"
monster.corpse = 39015
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
	targetDistance = 4,
	runHealth = 1000,
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
	{name ="melee", interval = 2000, chance = 100, minDamage = 200, maxDamage = -530, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -520, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 350, maxDamage = -780, range = 7, shootEffect = CONST_ANI_BOLT, target = false}
	
}

monster.defenses = {
	defense = 110,
	armor = 80,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
	
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
