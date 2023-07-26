UndefineClass('_9mm_AP')
DefineClass._9mm_AP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/9mm_bullets_armor_piercing.png",
	DisplayName = T(859387820909, --[[ModItemInventoryItemCompositeDef _9mm_AP DisplayName]] "9 mm Armor Piercing"),
	DisplayNamePlural = T(323309130537, --[[ModItemInventoryItemCompositeDef _9mm_AP DisplayNamePlural]] "9 mm Armor Piercing"),
	colorStyle = "AmmoAPColor",
	Description = T(199950930386, --[[ModItemInventoryItemCompositeDef _9mm_AP Description]] "9 mm ammo for Handguns and SMGs."),
	AdditionalHint = T(418764036018, --[[ModItemInventoryItemCompositeDef _9mm_AP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration"),
	MaxStacks = 500,
	Caliber = "9mm",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
	},
	GunPowder = 1,
}

