UndefineClass('_12gauge_Flechette')
DefineClass._12gauge_Flechette = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/12_gauge_bullets_flechette",
	DisplayName = T(994311605449, --[[ModItemInventoryItemCompositeDef _12gauge_Flechette DisplayName]] "12-gauge Sabot"),
	DisplayNamePlural = T(292882182138, --[[ModItemInventoryItemCompositeDef _12gauge_Flechette DisplayNamePlural]] "12-gauge Sabot"),
	colorStyle = "AmmoMatchColor",
	Description = T(353184354978, --[[ModItemInventoryItemCompositeDef _12gauge_Flechette Description]] "12-gauge ammo for Shotguns."),
	AdditionalHint = T(516082239475, --[[ModItemInventoryItemCompositeDef _12gauge_Flechette AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Longer range\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Narrow attack cone\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "12gauge",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_mul = 500,
			target_prop = "BuckshotConeAngle",
		}),
		PlaceObj('CaliberModification', {
			mod_mul = 500,
			target_prop = "OverwatchAngle",
		}),
		PlaceObj('CaliberModification', {
			mod_add = 4,
			target_prop = "WeaponRange",
		}),
	},
	AppliedEffects = {
		"Bleeding",
	},
	GunPowder = 1,
}

