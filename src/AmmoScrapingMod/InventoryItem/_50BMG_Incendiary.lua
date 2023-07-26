UndefineClass('_50BMG_Incendiary')
DefineClass._50BMG_Incendiary = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/50bmg_incendiary.png",
	DisplayName = T(288955756990, --[[ModItemInventoryItemCompositeDef _50BMG_Incendiary DisplayName]] ".50 Frag"),
	DisplayNamePlural = T(873925576017, --[[ModItemInventoryItemCompositeDef _50BMG_Incendiary DisplayNamePlural]] ".50 Frag"),
	colorStyle = "AmmoTracerColor",
	Description = T(897177292445, --[[ModItemInventoryItemCompositeDef _50BMG_Incendiary Description]] ".50 Ammo for Machine Guns, Snipers and Handguns."),
	AdditionalHint = T(482312884822, --[[ModItemInventoryItemCompositeDef _50BMG_Incendiary AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Burning</color>"),
	MaxStacks = 500,
	Caliber = "50BMG",
	Modifications = {},
	AppliedEffects = {
		"Exposed",
		"Burning",
	},
	GunPowder = 2,
}

