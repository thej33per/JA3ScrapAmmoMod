UndefineClass('_9mm_Shock')
DefineClass._9mm_Shock = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/9mm_bullets_shock.png",
	DisplayName = T(738167635201, --[[ModItemInventoryItemCompositeDef _9mm_Shock DisplayName]] "9 mm Shock"),
	DisplayNamePlural = T(436165943960, --[[ModItemInventoryItemCompositeDef _9mm_Shock DisplayNamePlural]] "9 mm Shock"),
	colorStyle = "AmmoMatchColor",
	Description = T(203130139171, --[[ModItemInventoryItemCompositeDef _9mm_Shock Description]] "9 mm ammo for Handguns and SMGs."),
	AdditionalHint = T(472504585535, --[[ModItemInventoryItemCompositeDef _9mm_Shock AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Reduced range\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> No armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
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
		PlaceObj('CaliberModification', {
			mod_add = -4,
			target_prop = "WeaponRange",
		}),
	},
	AppliedEffects = {
		"Exposed",
		"Bleeding",
	},
	GunPowder = 1,
}

