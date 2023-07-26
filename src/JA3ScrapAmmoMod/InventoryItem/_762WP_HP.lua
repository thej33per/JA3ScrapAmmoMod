UndefineClass('_762WP_HP')
DefineClass._762WP_HP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/762_wp_bullets_hollow_point.png",
	DisplayName = T(797678435066, --[[ModItemInventoryItemCompositeDef _762WP_HP DisplayName]] "7.62 mm WP Hollow Point"),
	DisplayNamePlural = T(130173456141, --[[ModItemInventoryItemCompositeDef _762WP_HP DisplayNamePlural]] "7.62 mm WP Hollow Point"),
	colorStyle = "AmmoHPColor",
	Description = T(648063237806, --[[ModItemInventoryItemCompositeDef _762WP_HP Description]] "7.62 Warsaw Pact ammo for Assault Rifles, SMGs, Machine Guns, and Snipers."),
	AdditionalHint = T(183704896156, --[[ModItemInventoryItemCompositeDef _762WP_HP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> No armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "762WP",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 50,
			target_prop = "CritChance",
		}),
		PlaceObj('CaliberModification', {
			mod_add = -4,
			target_prop = "PenetrationClass",
		}),
	},
	AppliedEffects = {
		"Bleeding",
	},
	GunPowder = 1,
}

