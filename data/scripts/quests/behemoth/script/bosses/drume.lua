local mType = Game.createMonsterType("Drume")
local monster = {}

monster.description = "a drume"
monster.experience = 30000
monster.outfit = {
	lookType = 1317,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 57,
	lookFeet = 57,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 21100
monster.maxHealth = 21100
monster.race = "blood"
monster.corpse = 39019
monster.speed = 340
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
	rewardBoss = true,
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

		{name = "platinum coin", chance = 100000, maxCount = 9},
		{name = "Supreme Health Potion",  chance = 4000},
		{name = "Ultimate Mana Potion",  chance = 5000},
		{name = "Energy Bar",  chance = 8000},
		{name = "Red Gem",  chance = 4000},
		{name = "Royal Star",  chance = 3500},
		{name = "Bullseye Potion",  chance = 3200},
		{name = "Green Gem",  chance = 5000},
		{name = "Stone Skin Amulet",  chance = 8000},
		{name = "Yellow Gem",  chance = 10000},
		{name = "Blue Gem",  chance = 7000},
		{name = "Terra Legs",  chance = 4000},
		{name = "Terra Mantle",  chance = 3900},
		{name = "Raw Watermelon Tourmaline",  chance = 5000},
		{name = "Studded Shield",  chance = 9500},
		{name = "Twigs",  chance = 7000},
		{name = "Lion Axe",  chance = 20},
		{name = "Lion Hammer",  chance = 20},
		{name = "Lion Longbow",  chance = 20},
		{name = "Lion Longsword",  chance = 20},
		{name = "Lion Plate",  chance = 20},
		{name = "Lion Wand",  chance = 20},
		{name = "Lion Shield",  chance = 20},
		{name = "Lion Spangenhelm",  chance = 20},
		{name = "Lion Spellbook",  chance = 20}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 900, maxDamage = -1450, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -980, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -700, maxDamage = -920, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true}
	
}

monster.defenses = {
	defense = 110,
	armor = 80,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
	
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -1}
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
