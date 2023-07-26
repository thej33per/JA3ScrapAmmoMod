UndefineClass('_762WP_Tracer')
DefineClass._762WP_Tracer = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/762_wp_bullets_tracer.png",
	DisplayName = T(782482272628, --[[ModItemInventoryItemCompositeDef _762WP_Tracer DisplayName]] "7.62 mm WP Tracer"),
	DisplayNamePlural = T(746573934898, --[[ModItemInventoryItemCompositeDef _762WP_Tracer DisplayNamePlural]] "7.62 mm WP Tracer"),
	colorStyle = "AmmoTracerColor",
	Description = T(160049026784, --[[ModItemInventoryItemCompositeDef _762WP_Tracer Description]] "7.62 Warsaw Pact ammo for Assault Rifles, SMGs, Machine Guns, and Snipers."),
	AdditionalHint = T(737383126496, --[[ModItemInventoryItemCompositeDef _762WP_Tracer AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Hit enemies are <color EmStyle>Exposed</color> and lose the benefits of Cover"),
	MaxStacks = 500,
	Caliber = "762WP",
	Modifications = {},
	AppliedEffects = {
		"Exposed",
	},
	GunPowder = 1,
}

