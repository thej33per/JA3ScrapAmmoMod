UndefineClass('_12gauge_Buckshot')
DefineClass._12gauge_Buckshot = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/12_gauge_bullets_buckshot.png",
	DisplayName = T(817584556389, --[[ModItemInventoryItemCompositeDef _12gauge_Buckshot DisplayName]] "12-gauge Buckshot"),
	DisplayNamePlural = T(452529018580, --[[ModItemInventoryItemCompositeDef _12gauge_Buckshot DisplayNamePlural]] "12-gauge Buckshot"),
	colorStyle = "AmmoBasicColor",
	Description = T(263757581937, --[[ModItemInventoryItemCompositeDef _12gauge_Buckshot Description]] "12-gauge ammo for Shotguns."),
	AdditionalHint = T(854915907925, --[[ModItemInventoryItemCompositeDef _12gauge_Buckshot AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "12gauge",
	Modifications = {},
	AppliedEffects = {
		"Bleeding",
	},
	GunPowder = 1,
}

