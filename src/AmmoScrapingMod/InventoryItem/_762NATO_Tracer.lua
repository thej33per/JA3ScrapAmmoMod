UndefineClass('_762NATO_Tracer')
DefineClass._762NATO_Tracer = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/762_nato_bullets_tracer.png",
	DisplayName = T(609896162589, --[[ModItemInventoryItemCompositeDef _762NATO_Tracer DisplayName]] "7.62 mm NATO Tracer"),
	DisplayNamePlural = T(396485123376, --[[ModItemInventoryItemCompositeDef _762NATO_Tracer DisplayNamePlural]] "7.62 mm NATO Tracer"),
	colorStyle = "AmmoTracerColor",
	Description = T(544145114885, --[[ModItemInventoryItemCompositeDef _762NATO_Tracer Description]] "7.62 NATO ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(525715465109, --[[ModItemInventoryItemCompositeDef _762NATO_Tracer AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover"),
	MaxStacks = 500,
	Caliber = "762NATO",
	Modifications = {},
	AppliedEffects = {
		"Exposed",
	},
	GunPowder = 1,
}

