UndefineClass('_44CAL_AP')
DefineClass._44CAL_AP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/44_cal_bullets_armor_piercing.png",
	DisplayName = T(735499371090, --[[ModItemInventoryItemCompositeDef _44CAL_AP DisplayName]] ".44 Armor Piercing"),
	DisplayNamePlural = T(877463400750, --[[ModItemInventoryItemCompositeDef _44CAL_AP DisplayNamePlural]] ".44 Armor Piercing"),
	colorStyle = "AmmoAPColor",
	Description = T(776316868771, --[[ModItemInventoryItemCompositeDef _44CAL_AP Description]] ".44 Ammo for Revolvers and Rifles."),
	AdditionalHint = T(642295786881, --[[ModItemInventoryItemCompositeDef _44CAL_AP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration"),
	MaxStacks = 500,
	Caliber = "44CAL",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
	},
	GunPowder = 1,
}

