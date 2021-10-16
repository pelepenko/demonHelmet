local mType = Game.createMonsterType("Usurper Warlock")
local monster = {}

monster.description = "a Usurper Warlock"
monster.experience = 7000
monster.outfit = {
	lookType = 1317,
	lookHead = 114,
	lookBody = 76,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7500
monster.maxHealth = 7500	
monster.race = "blood"
monster.corpse = 39011
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

		{name = "platinum coin", chance = 25000, maxCount = 4},
		{name = "Terra Hood",  chance = 1000},
		{name = "Black Pearl",  chance = 1000},
		{name = "Gold Ingot",  chance = 1000},
		{name = "Lion Crest",  chance = 1000},
		{name = "Lion Cloak Patch",  chance = 1000},
		{name = "Lion Crest",  chance = 1000},
		{name = "Magma Monocle",  chance = 1000},
		{name = "Lightning Headband",  chance = 1000},
		{name = "Knight Legs",  chance = 1000}

	


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -130, maxDamage = -530, range = 7, shootEffect = CONST_ANI_ICE, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -450, length = 8, spread = 3, effect = CONST_ME_SMALLCLOUDS, target = false}
}


monster.defenses = {
	defense = 110,
	armor = 80,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 400, effect = CONST_ME_MAGIC_BLUE, target = false}
	
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 32},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
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
