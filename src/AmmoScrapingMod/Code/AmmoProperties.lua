UndefineClass("AmmoProperties")
DefineClass.AmmoProperties = {
    __parents = {
        "PropertyObject"
    },
    __generated_by_class = "ClassDef",
    properties = {
        {
            category = "Caliber",
            id = "Caliber",
            editor = "combo",
            default = false,
            template = true,
            items = function(self)
                return PresetGroupCombo("Caliber", "Default")
            end
        },
        {
            category = "Caliber",
            id = "MaxStacks",
            name = "Max Stacks",
            help = "Ammo can stack up to that number.",
            editor = "number",
            default = 10,
            template = true,
            slider = true,
            min = 1,
            max = 10000
        },
        {
            id = "Modifications",
            editor = "nested_list",
            default = false,
            template = true,
            base_class = "CaliberModification",
            inclusive = true
        },
        {
            category = "Combat",
            id = "AppliedEffects",
            name = "Applied Effects",
            editor = "preset_id_list",
            default = {},
            template = true,
            preset_class = "CharacterEffectCompositeDef",
            preset_group = "Default",
            item_default = ""
        },
        {
            category = "Condition",
            id = "ScrapParts",
            name = "Scrap Parts",
            help = "The number for Parts that are given to the player when its scraped",
            editor = "number",
            default = 0,
            template = true,
            min = 0,
            max = 1000,
            dont_save = true
        },
        {
            category = "Condition",
            id = "GunPowder",
            name = "GunPowder",
            help = "The number for GunPowder that are given to the player when its scraped",
            editor = "number",
            default = 0,
            template = true,
            min = 0,
            max = 1000,
            dont_save = true
        }
    }
}