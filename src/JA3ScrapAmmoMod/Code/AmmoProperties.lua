UndefineClass("Ammo")

-- override Ammo-Class in Lua\Inventory.lua declaration

DefineClass.Ammo = {
    __parents = {
        "SquadBagItem",
        "AmmoProperties",
        "BobbyRayShopAmmoProperties",
        "ScrapableItem"


    },
    properties = {
        {
            category = "Condition",
            id = "ScrapParts",
            name = "Scrap Parts",
            help = "The number for Parts that are given to the player when its scraped",
            editor = "number",
            default = 2,
            template = true,
            min = 0,
            max = 1000,
        },
        {
            category = "Condition",
            id = "GunPowder",
            name = "GunPowder",
            help = "The number for GunPowder that are given to the player when its scraped",
            editor = "number",
            default = 1,
            template = true,
            min = 0,
            max = 1000,
        }
    }
}