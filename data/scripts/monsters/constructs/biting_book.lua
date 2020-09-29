local mType = Game.createMonsterType("Biting Book")
local monster = {}

monster.description = "a biting book"
monster.experience = 9350
monster.outfit = {
	lookType = 1066,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "undead"
monster.corpse = 33353
monster.speed = 480
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2231, chance = 500, maxCount = 2},
	{id = "Book Page", chance = 500, maxCount = 4},
	{id = "Glowing Rune", chance = 500, maxCount = 2},
	{id = "Platinum Coin", chance = 10000, maxCount = 5},
	{id = "Silken Bookmark", chance = 500, maxCount = 3}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -1055, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1000, chance = 12, minDamage = 0, maxDamage = -1210, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_SMOKE, target = false},
	{name ="combat", interval = 1000, chance = 14, minDamage = 0, maxDamage = -1210, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_BATS, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 76
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)