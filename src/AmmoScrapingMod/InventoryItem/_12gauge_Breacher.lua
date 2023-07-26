UndefineClass('_12gauge_Breacher')
DefineClass._12gauge_Breacher = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/12_gauge_bullets_breacher",
	DisplayName = T(644616198480, --[[ModItemInventoryItemCompositeDef _12gauge_Breacher DisplayName]] "12-gauge Breacher"),
	DisplayNamePlural = T(756176270226, --[[ModItemInventoryItemCompositeDef _12gauge_Breacher DisplayNamePlural]] "12-gauge Breacher"),
	colorStyle = "AmmoAPColor",
	Description = T(587086786172, --[[ModItemInventoryItemCompositeDef _12gauge_Breacher Description]] "12-gauge ammo for Shotguns."),
	AdditionalHint = T(109180931299, --[[ModItemInventoryItemCompositeDef _12gauge_Breacher AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Very short range\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Wide attack cone\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Prevents Grazing hits due to opponents Taking Cover\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Suppressed</color>"),
	MaxStacks = 500,
	Caliber = "12gauge",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 1,
			target_prop = "IgnoreCoverReduction",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 500,
			target_prop = "WeaponRange",
		}),
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 2000,
			target_prop = "ObjDamageMod",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 1700,
			target_prop = "BuckshotConeAngle",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 1700,
			target_prop = "OverwatchAngle",
		}),
	},
	AppliedEffects = {
		"Suppressed",
	},
	GunPowder = 1,
}

