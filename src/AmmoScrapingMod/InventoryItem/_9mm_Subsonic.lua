UndefineClass('_9mm_Subsonic')
DefineClass._9mm_Subsonic = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/9mm_bullets_subsonic.png",
	DisplayName = T(195640092295, --[[ModItemInventoryItemCompositeDef _9mm_Subsonic DisplayName]] "9 mm Subsonic"),
	DisplayNamePlural = T(637301715850, --[[ModItemInventoryItemCompositeDef _9mm_Subsonic DisplayNamePlural]] "9 mm Subsonic"),
	colorStyle = "AmmoMatchColor",
	Description = T(848025590882, --[[ModItemInventoryItemCompositeDef _9mm_Subsonic Description]] "9 mm ammo for Handguns and SMGs."),
	AdditionalHint = T(868544024316, --[[ModItemInventoryItemCompositeDef _9mm_Subsonic AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Less noisy"),
	MaxStacks = 500,
	Caliber = "9mm",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_mul = 500,
			target_prop = "Noise",
		}),
	},
	GunPowder = 1,
}

