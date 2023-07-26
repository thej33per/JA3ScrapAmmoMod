UndefineClass('_762NATO_Match')
DefineClass._762NATO_Match = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/762_nato_bullets_match.png",
	DisplayName = T(816377501981, --[[ModItemInventoryItemCompositeDef _762NATO_Match DisplayName]] "7.62 mm NATO Match"),
	DisplayNamePlural = T(451955264155, --[[ModItemInventoryItemCompositeDef _762NATO_Match DisplayNamePlural]] "7.62 mm NATO Match"),
	colorStyle = "AmmoMatchColor",
	Description = T(653265028863, --[[ModItemInventoryItemCompositeDef _762NATO_Match Description]] "7.62 NATO ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(105444974504, --[[ModItemInventoryItemCompositeDef _762NATO_Match AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming"),
	MaxStacks = 500,
	Caliber = "762NATO",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
	GunPowder = 1,
}

