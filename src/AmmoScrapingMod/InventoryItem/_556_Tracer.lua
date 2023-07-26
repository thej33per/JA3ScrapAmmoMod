UndefineClass('_556_Tracer')
DefineClass._556_Tracer = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/556_nato_bullets_tracer.png",
	DisplayName = T(553775715287, --[[ModItemInventoryItemCompositeDef _556_Tracer DisplayName]] "5.56 mm Tracer"),
	DisplayNamePlural = T(399661349753, --[[ModItemInventoryItemCompositeDef _556_Tracer DisplayNamePlural]] "5.56 mm Tracer"),
	colorStyle = "AmmoTracerColor",
	Description = T(199125015116, --[[ModItemInventoryItemCompositeDef _556_Tracer Description]] "5.56 Ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(731237568096, --[[ModItemInventoryItemCompositeDef _556_Tracer AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover"),
	MaxStacks = 500,
	Caliber = "556",
	Modifications = {},
	AppliedEffects = {
		"Exposed",
	},
	GunPowder = 1,
}

