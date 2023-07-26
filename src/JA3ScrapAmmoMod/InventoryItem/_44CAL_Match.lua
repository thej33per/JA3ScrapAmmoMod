UndefineClass('_44CAL_Match')
DefineClass._44CAL_Match = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/44_cal_bullets_match",
	DisplayName = T(935031543254, --[[ModItemInventoryItemCompositeDef _44CAL_Match DisplayName]] ".44 Match"),
	DisplayNamePlural = T(729118661137, --[[ModItemInventoryItemCompositeDef _44CAL_Match DisplayNamePlural]] ".44 Match"),
	colorStyle = "AmmoMatchColor",
	Description = T(653130596618, --[[ModItemInventoryItemCompositeDef _44CAL_Match Description]] ".44 Ammo for Revolvers and Rifles."),
	AdditionalHint = T(969507173754, --[[ModItemInventoryItemCompositeDef _44CAL_Match AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming"),
	MaxStacks = 500,
	Caliber = "44CAL",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
	GunPowder = 1,
}

