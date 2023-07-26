UndefineClass('_762WP_AP')
DefineClass._762WP_AP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/762_wp_bullets_armor_piercing.png",
	DisplayName = T(575741321769, --[[ModItemInventoryItemCompositeDef _762WP_AP DisplayName]] "7.62 mm WP Armor Piercing"),
	DisplayNamePlural = T(509526496588, --[[ModItemInventoryItemCompositeDef _762WP_AP DisplayNamePlural]] "7.62 mm WP Armor Piercing"),
	colorStyle = "AmmoAPColor",
	Description = T(306830054524, --[[ModItemInventoryItemCompositeDef _762WP_AP Description]] "7.62 Warsaw Pact ammo for Assault Rifles, SMGs, Machine Guns, and Snipers."),
	AdditionalHint = T(188869339445, --[[ModItemInventoryItemCompositeDef _762WP_AP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration"),
	MaxStacks = 500,
	Caliber = "762WP",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
	},
	GunPowder = 1,
}

