UndefineClass('_762NATO_AP')
DefineClass._762NATO_AP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/762_nato_bullets_armor_piercing.png",
	DisplayName = T(290590514551, --[[ModItemInventoryItemCompositeDef _762NATO_AP DisplayName]] "7.62 mm NATO Armor Piercing"),
	DisplayNamePlural = T(862337628607, --[[ModItemInventoryItemCompositeDef _762NATO_AP DisplayNamePlural]] "7.62 mm NATO Armor Piercing"),
	colorStyle = "AmmoAPColor",
	Description = T(951278049573, --[[ModItemInventoryItemCompositeDef _762NATO_AP Description]] "7.62 NATO ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(451891915125, --[[ModItemInventoryItemCompositeDef _762NATO_AP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration"),
	MaxStacks = 500,
	Caliber = "762NATO",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
	},
	GunPowder = 1,
}

