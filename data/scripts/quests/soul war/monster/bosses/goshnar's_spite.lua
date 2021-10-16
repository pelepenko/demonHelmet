local mType = Game.createMonsterType("Goshnar's Spite")
local monster = {}

monster.description = "an goshnar's spite"
monster.experience = 800
monster.outfit = {
	lookType = 1305,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 508


monster.health = 120000
monster.maxHealth = 120000
monster.race = "undead"
monster.corpse = 38702
monster.speed = 340
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 90,
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

monster.voices = {
	interval = 5000,
	chance = 0,
	{text = "Let's battle it out in a duel!", yell = false},
	{text = "Bring it!", yell = false},
	{text = "I'll fight here in eternity and beyond.", yell = false},
	{text = "I will not give up!", yell = false},
	{text = "Another foolish adventurer who tries to beat me.", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 44000, maxCount = 100},
	{name = "gold coin", chance = 50500, maxCount = 48},
	{name = "berserk potion", chance = 2850},
	{name = "bullseye potion", chance = 2850},
	{name = "mastermind potion", chance = 2850},
	{name = "blue gem", chance = 2850},
	{name = "dragon figurine", chance = 2850},
	{name = "giant sapphire", chance = 2850},
	{name = "giant topaz", chance = 2850},
	{name = "green gem", chance = 2850},
	{name = "red gem", chance = 2850},
	{name = "violet gem", chance = 2850},
	{name = "white gem", chance = 2850},
	{name = "yellow gem", chance = 2850},
	{name = "malice's spine", chance = 850},
	{name = "the skull of a beast", chance = 850},
	{name = "bag you desire", chance = 50}	
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1050, maxDamage = -1950},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -900, maxDamage = -2135, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
