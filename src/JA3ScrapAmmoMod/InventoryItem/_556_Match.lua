UndefineClass('_556_Match')
DefineClass._556_Match = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/556_nato_bullets_match.png",
	DisplayName = T(698167806306, --[[ModItemInventoryItemCompositeDef _556_Match DisplayName]] "5.56 mm Match"),
	DisplayNamePlural = T(111898963431, --[[ModItemInventoryItemCompositeDef _556_Match DisplayNamePlural]] "5.56 mm Match"),
	colorStyle = "AmmoMatchColor",
	Description = T(812408999625, --[[ModItemInventoryItemCompositeDef _556_Match Description]] "5.56 Ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(925629938932, --[[ModItemInventoryItemCompositeDef _556_Match AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming"),
	MaxStacks = 500,
	Caliber = "556",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
	GunPowder = 1,
}

