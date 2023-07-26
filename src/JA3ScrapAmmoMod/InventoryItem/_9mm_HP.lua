UndefineClass('_9mm_HP')
DefineClass._9mm_HP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/9mm_bullets_hollow_point.png",
	DisplayName = T(186903402109, --[[ModItemInventoryItemCompositeDef _9mm_HP DisplayName]] "9 mm Hollow Point"),
	DisplayNamePlural = T(201056654024, --[[ModItemInventoryItemCompositeDef _9mm_HP DisplayNamePlural]] "9 mm Hollow Point"),
	colorStyle = "AmmoHPColor",
	Description = T(143348710800, --[[ModItemInventoryItemCompositeDef _9mm_HP Description]] "9 mm ammo for Handguns and SMGs."),
	AdditionalHint = T(327585201436, --[[ModItemInventoryItemCompositeDef _9mm_HP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> No armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "9mm",
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

