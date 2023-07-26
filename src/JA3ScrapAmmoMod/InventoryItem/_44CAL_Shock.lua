UndefineClass('_44CAL_Shock')
DefineClass._44CAL_Shock = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/44_cal_bullets_shock.png",
	DisplayName = T(671330851390, --[[ModItemInventoryItemCompositeDef _44CAL_Shock DisplayName]] ".44 Shock"),
	DisplayNamePlural = T(136526955127, --[[ModItemInventoryItemCompositeDef _44CAL_Shock DisplayNamePlural]] ".44 Shock"),
	colorStyle = "AmmoMatchColor",
	Description = T(255049518731, --[[ModItemInventoryItemCompositeDef _44CAL_Shock Description]] ".44 Ammo for Revolvers and Rifles."),
	AdditionalHint = T(767771378452, --[[ModItemInventoryItemCompositeDef _44CAL_Shock AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Reduced range\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "44CAL",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 50,
			target_prop = "CritChance",
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

