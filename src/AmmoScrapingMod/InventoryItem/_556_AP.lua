UndefineClass('_556_AP')
DefineClass._556_AP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/556_nato_bullets_armor_piercing.png",
	DisplayName = T(692754815369, --[[ModItemInventoryItemCompositeDef _556_AP DisplayName]] "5.56 mm Armor Piercing"),
	DisplayNamePlural = T(179782107141, --[[ModItemInventoryItemCompositeDef _556_AP DisplayNamePlural]] "5.56 mm Armor Piercing"),
	colorStyle = "AmmoAPColor",
	Description = T(648577297256, --[[ModItemInventoryItemCompositeDef _556_AP Description]] "5.56 Ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(897062191321, --[[ModItemInventoryItemCompositeDef _556_AP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration"),
	MaxStacks = 500,
	Caliber = "556",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
	},
	GunPowder = 1,
}

