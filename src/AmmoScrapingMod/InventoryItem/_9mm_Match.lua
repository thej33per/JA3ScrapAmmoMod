UndefineClass('_9mm_Match')
DefineClass._9mm_Match = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/9mm_bullets_match.png",
	DisplayName = T(179951290481, --[[ModItemInventoryItemCompositeDef _9mm_Match DisplayName]] "9 mm Match"),
	DisplayNamePlural = T(744008286315, --[[ModItemInventoryItemCompositeDef _9mm_Match DisplayNamePlural]] "9 mm Match"),
	colorStyle = "AmmoMatchColor",
	Description = T(866336693485, --[[ModItemInventoryItemCompositeDef _9mm_Match Description]] "9 mm ammo for Handguns and SMGs."),
	AdditionalHint = T(961594620499, --[[ModItemInventoryItemCompositeDef _9mm_Match AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming"),
	MaxStacks = 500,
	Caliber = "9mm",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
	GunPowder = 1,
}

