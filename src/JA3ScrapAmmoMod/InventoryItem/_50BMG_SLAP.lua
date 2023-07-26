UndefineClass('_50BMG_SLAP')
DefineClass._50BMG_SLAP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 10,
	Icon = "UI/Icons/Items/50bmg_slap.png",
	DisplayName = T(630196331609, --[[ModItemInventoryItemCompositeDef _50BMG_SLAP DisplayName]] ".50 SLAP"),
	DisplayNamePlural = T(726628131150, --[[ModItemInventoryItemCompositeDef _50BMG_SLAP DisplayNamePlural]] ".50 SLAP"),
	colorStyle = "AmmoAPColor",
	Description = T(865778878027, --[[ModItemInventoryItemCompositeDef _50BMG_SLAP Description]] ".50 Ammo for Machine Guns, Snipers and Handguns."),
	AdditionalHint = T(116250141970, --[[ModItemInventoryItemCompositeDef _50BMG_SLAP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Improved armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Slightly higher Crit chance"),
	MaxStacks = 500,
	Caliber = "50BMG",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 1,
			target_prop = "PenetrationClass",
		}),
		PlaceObj('CaliberModification', {
			mod_add = 15,
			target_prop = "CritChance",
		}),
	},
	GunPowder = 1,
}

