UndefineClass('_556_HP')
DefineClass._556_HP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/556_nato_bullets_hollow_point.png",
	DisplayName = T(785562002563, --[[ModItemInventoryItemCompositeDef _556_HP DisplayName]] "5.56 mm Hollow Point"),
	DisplayNamePlural = T(851863869106, --[[ModItemInventoryItemCompositeDef _556_HP DisplayNamePlural]] "5.56 mm Hollow Point"),
	colorStyle = "AmmoHPColor",
	Description = T(480380205605, --[[ModItemInventoryItemCompositeDef _556_HP Description]] "5.56 Ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(124123620804, --[[ModItemInventoryItemCompositeDef _556_HP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> No armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "556",
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

