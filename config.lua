--[[ Default Config Settings ]]--
Config = {}



--[[ Zombie Loot Config Settings ]]--
Config.ZombieDropLoot 			= true  				-- For zombies to drop loot, set to true.
Config.RandomChance 			= math.random(1, 100)  			-- Random number for giveaway chance.
Config.ItemAmount 			= 1 					-- Random number for the ammout of item given.
Config.Parts 				= true  				-- For zombies to drop loot, set to true.
Config.PartItemAmount 			= math.random(1,5) 			-- Random number for the ammout of item given.
Config.AddtionalItem 			= true	 				-- Set to true to give extra item on loot.
Config.AddItem 				= 'firstaid' 				-- Extra item to give player.
Config.AddItemAmount 			= 1 					-- Random number for the ammout of extra item given.
Config.ProbabilityMoneyLoot 		= 33 					-- 33 = 30%
Config.ProbabilityItemLoot 		= 53 					-- 53-33 = 20%

--[[ Zombie Loot Items Config Settings ]]--
Config.Items = {
	[1] = "evidence_briefcase",
	[2] = "evidence_documents",
	[3] = "evidence_samples",
	[4] = "evidence_usb",
}

--[[ Zombie Body Part Config Settings ]]--
Config.ZombieParts = {
	[1] = "zombie_brain",
	[2] = "zombie_heart",
	[3] = "zombie_lungs",
	[4] = "zombie_arm",
	[5] = "zombie_foot",	
}

Config.ItemLoot = {
	'rifle_ammo',
	'pistol_ammo',
	'smg_ammo',
	"WEAPON_PISTOL",
	"WEAPON_FLASHLIGHT",
	"WEAPON_MACHETE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_BAT",
	"WEAPON_MICROSMG",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_GRENADE"
}

Config.ObjectDropLoot = true --false if you experience low performance of server [[ HIGHLY UNRECOMMENDED ]]
Config.ObjectsLoot = { -- objects in here can be looted around the map
	"prop_bin_01a",
	"prop_bin_02a",
	"prop_bin_05a",
	"prop_bin_08a",
	"prop_bin_08open",
	"p_dumpster_t",
	"prop_cs_dumpster_01a",
	"prop_dumpster_01a",
	"prop_dumpster_02a",
	"prop_dumpster_02b",
	"prop_dumpster_3a",
	"prop_dumpster_4a",
	"prop_rub_buswreck_06",
	"prop_rub_buswreck_01",
	"prop_rub_carwreck_2",
	"prop_rub_carwreck_12",
	"prop_rub_carwreck_14",
	"prop_rub_carwreck_5",
	"prop_rub_trukwreck_1",
	"prop_rub_buswreck_03",
	"prop_rub_carwreck_10",
	"prop_rub_carwreck_11",
	"prop_rub_carwreck_3",
	"prop_rub_carwreck_13",
	"prop_rub_carwreck_8",
	"prop_rub_carwreck_7",
	"prop_rub_carwreck_15",
	"prop_rub_carwreck_17",
	"prop_rub_carwreck_16",
	"prop_rub_carwreck_9",
	"prop_container_old1",
	"prop_container_04a",
	"prop_container_05a",
	"prop_rub_cont_01c",
	"prop_container_03a",
	"prop_contr_03b_ld",
	"prop_wrecked_buzzard",
	"prop_shamal_crash",
	"prop_trailer_01_new",
	"prop_rail_boxcar2",
	"prop_dumpster_4b"
}


Config.ProbabilityWeaponLootObject = 8 
Config.ProbabilityMoneyLootObject = 42 
Config.ProbabilityItemLootObject = 60

Config.WeaponLootObject ={
	"WEAPON_PISTOL",
	"WEAPON_FLASHLIGHT",
	"WEAPON_MACHETE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_BAT",
	"WEAPON_MICROSMG",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_GRENADE"
}
Config.ItemLootObject = {
	'bandage',
	'firstaid'
}