UndefineClass('_762NATO_HP')
DefineClass._762NATO_HP = {
	__parents = { "Ammo" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ammo",
	ScrapParts = 5,
	Icon = "UI/Icons/Items/762_nato_bullets_hollow_point.png",
	DisplayName = T(265454549104, --[[ModItemInventoryItemCompositeDef _762NATO_HP DisplayName]] "7.62 mm NATO Hollow Point"),
	DisplayNamePlural = T(772926698509, --[[ModItemInventoryItemCompositeDef _762NATO_HP DisplayNamePlural]] "7.62 mm NATO Hollow Point"),
	colorStyle = "AmmoHPColor",
	Description = T(699943246197, --[[ModItemInventoryItemCompositeDef _762NATO_HP Description]] "7.62 NATO ammo for Assault Rifles, SMGs, and Machine Guns."),
	AdditionalHint = T(292088089137, --[[ModItemInventoryItemCompositeDef _762NATO_HP AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> No armor penetration\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> High Crit chance\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Bleeding</color>"),
	MaxStacks = 500,
	Caliber = "762NATO",
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
	AppliedEffects = {
		"Bleeding",
	},
	GunPowder = 1,
}

