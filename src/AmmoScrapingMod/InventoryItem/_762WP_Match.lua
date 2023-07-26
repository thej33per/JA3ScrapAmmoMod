UndefineClass('_762WP_Match')
DefineClass._762WP_Match = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	Repairable = false,
	ScrapParts = 5,
	Icon = "UI/Icons/Items/762_wp_bullets_match.png",
	DisplayName = T(366194229820, --[[ModItemInventoryItemCompositeDef _762WP_Match DisplayName]] "7.62 mm WP Match"),
	DisplayNamePlural = T(241028501277, --[[ModItemInventoryItemCompositeDef _762WP_Match DisplayNamePlural]] "7.62 mm WP Match"),
	colorStyle = "AmmoMatchColor",
	Description = T(144203148415, --[[ModItemInventoryItemCompositeDef _762WP_Match Description]] "7.62 Warsaw Pact ammo for Assault Rifles, SMGs, Machine Guns, and Snipers."),
	AdditionalHint = T(873037222597, --[[ModItemInventoryItemCompositeDef _762WP_Match AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming"),
	MaxStacks = 500,
	Caliber = "762WP",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
	GunPowder = 1,
}

