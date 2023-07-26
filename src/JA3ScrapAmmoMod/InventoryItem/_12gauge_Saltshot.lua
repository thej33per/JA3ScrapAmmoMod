UndefineClass('_12gauge_Saltshot')
DefineClass._12gauge_Saltshot = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/12_gauge_bullets_saltshot.png",
	DisplayName = T(897306856548, --[[ModItemInventoryItemCompositeDef _12gauge_Saltshot DisplayName]] "12-gauge Saltshot"),
	DisplayNamePlural = T(658376345970, --[[ModItemInventoryItemCompositeDef _12gauge_Saltshot DisplayNamePlural]] "12-gauge Saltshot"),
	colorStyle = "AmmoTracerColor",
	Description = T(327947775885, --[[ModItemInventoryItemCompositeDef _12gauge_Saltshot Description]] "12-gauge ammo for Shotguns."),
	AdditionalHint = T(129571711087, --[[ModItemInventoryItemCompositeDef _12gauge_Saltshot AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Low damage\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Shorter range\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Wide attack cone\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Inaccurate</color>"),
	MaxStacks = 500,
	Caliber = "12gauge",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_mul = 500,
			target_prop = "Damage",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 1700,
			target_prop = "BuckshotConeAngle",
		}),
		PlaceObj('CaliberModification', {
			mod_add = -2,
			target_prop = "WeaponRange",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 1700,
			target_prop = "OverwatchAngle",
		}),
	},
	AppliedEffects = {
		"Inaccurate",
	},
	GunPowder = 1,
}

