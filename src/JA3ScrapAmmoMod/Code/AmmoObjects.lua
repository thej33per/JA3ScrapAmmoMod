function AmmoSetScrap(className, partsNum)
    if _G[className] then
        _G[className].ScrapParts = partsNum
    end
    if InventoryItemDefs[className] then
        InventoryItemDefs[className].ScrapParts = partsNum
    end
end

function AmmoSetGunPowder(className, gunpowderNum)
    if _G[className] then
        _G[className].GunPowder = gunpowderNum
    end
    if InventoryItemDefs[className] then
        InventoryItemDefs[className].GunPowder = gunpowderNum
    end
end

AmmoSetScrap('_9mm_AP', 4)
AmmoSetScrap('_9mm_Basic', 2)
AmmoSetScrap('_9mm_HP', 2)
AmmoSetScrap('_9mm_Match', 2)
AmmoSetScrap('_9mm_Shock', 2)
AmmoSetScrap('_9mm_Subsonic', 2)
AmmoSetScrap('_9mm_Tracer', 2)
AmmoSetScrap('_12gauge_Breacher', 4)
AmmoSetScrap('_12gauge_Buckshot', 2)
AmmoSetScrap('_12gauge_Flechette', 2)
AmmoSetScrap('_12gauge_Saltshot', 2)
AmmoSetScrap('_44CAL_AP', 4)
AmmoSetScrap('_44CAL_Basic', 2)
AmmoSetScrap('_44CAL_HP', 2)
AmmoSetScrap('_44CAL_Match', 2)
AmmoSetScrap('_44CAL_Shock', 2)
AmmoSetScrap('_50BMG_Basic', 2)
AmmoSetScrap('_50BMG_HE', 4)
AmmoSetScrap('_50BMG_Incendiary', 2)
AmmoSetScrap('_50BMG_SLAP', 2)
AmmoSetScrap('_556_AP', 4)
AmmoSetScrap('_556_Basic', 2)
AmmoSetScrap('_556_HP', 2)
AmmoSetScrap('_556_Match', 2)
AmmoSetScrap('_556_Tracer', 2)
AmmoSetScrap('_762NATO_AP', 4)
AmmoSetScrap('_762NATO_Basic', 2)
AmmoSetScrap('_762NATO_HP', 2)
AmmoSetScrap('_762NATO_Match', 2)
AmmoSetScrap('_762NATO_Tracer', 2)
AmmoSetScrap('_762WP_AP', 4)
AmmoSetScrap('_762WP_Basic', 2)
AmmoSetScrap('_762WP_HP', 2)
AmmoSetScrap('_762WP_Match', 2)
AmmoSetScrap('_762WP_Tracer', 2)

AmmoSetGunPowder('_50BMG_HE', 2)
AmmoSetGunPowder('_50BMG_Incendiary', 2)