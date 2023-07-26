UndefineClass('_44CAL_HP')
DefineClass._44CAL_HP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/44_cal_bullets_hollow_point",
	DisplayName = T(290851622821, --[[ModItemInventoryItemCompositeDef _44CAL_HP DisplayName]] ".44 Hollow Point"),
	DisplayNamePlural = T(947009347102, --[[ModItemInventoryItemCompositeDef _44CAL_HP DisplayNamePlural]] ".44 Hollow Point"),
	colorStyle = "AmmoHPColor",
	Description = T(283556501662, --[[ModItemInventoryItemCompositeDef _44CAL_HP Description]] ".44 Ammo for Revolvers and Rifles."),
	AdditionalHint = T(748707788425, --[[ModItemInventoryItemCompositeDef _44CAL_HP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "44CAL",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 50,
			target_prop = "CritChance",
		}),
	},
	AppliedEffects = {
		"Bleeding",
	},
	GunPowder = 1,
}

