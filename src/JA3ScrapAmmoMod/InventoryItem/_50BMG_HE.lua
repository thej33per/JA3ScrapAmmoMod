UndefineClass('_50BMG_HE')
DefineClass._50BMG_HE = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/50bmg_he.png",
	DisplayName = T(470141133007, --[[ModItemInventoryItemCompositeDef _50BMG_HE DisplayName]] ".50 Explosive"),
	DisplayNamePlural = T(249148916468, --[[ModItemInventoryItemCompositeDef _50BMG_HE DisplayNamePlural]] ".50 Explosive"),
	colorStyle = "AmmoHPColor",
	Description = T(438865141913, --[[ModItemInventoryItemCompositeDef _50BMG_HE Description]] ".50 Ammo for Machine Guns, Snipers and Handguns."),
	AdditionalHint = T(845204892785, --[[ModItemInventoryItemCompositeDef _50BMG_HE AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> No armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance"),
	MaxStacks = 500,
	Caliber = "50BMG",
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
	GunPowder = 2,
}

