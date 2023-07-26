UndefineClass('_9mm_Tracer')
DefineClass._9mm_Tracer = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/9mm_bullets_tracer.png",
	DisplayName = T(803745141125, --[[ModItemInventoryItemCompositeDef _9mm_Tracer DisplayName]] "9 mm Tracer"),
	DisplayNamePlural = T(693836143344, --[[ModItemInventoryItemCompositeDef _9mm_Tracer DisplayNamePlural]] "9 mm Tracer"),
	colorStyle = "AmmoTracerColor",
	Description = T(684499498676, --[[ModItemInventoryItemCompositeDef _9mm_Tracer Description]] "9 mm ammo for Handguns and SMGs."),
	AdditionalHint = T(109038412193, --[[ModItemInventoryItemCompositeDef _9mm_Tracer AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover"),
	MaxStacks = 500,
	Caliber = "9mm",
	AppliedEffects = {
		"Exposed",
	},
	GunPowder = 1,
}

