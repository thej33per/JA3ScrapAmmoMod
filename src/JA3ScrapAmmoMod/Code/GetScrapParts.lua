local function isAPAmmo(ammo)
    if ammo ~= nil then
        if ammo.Modifications ~= nil then
            --mylog("DEBUG: " .. printObject(ammo))
            for _, mod in ipairs(ammo.Modifications) do
                if mod.target_prop == "PenetrationClass" and mod.mod_add ~= nil and mod.mod_add > 0 then
                    mylog("DEBUG: ".. tostring(mod.target_prop) .. " = " .. tostring(mod.mod_add))
                    mylog("INFO: Ammo is AP ammo")
                    return true
                end
            end
        end
        mylog("INFO: Ammo is normal ammo")
        return false
    else
        mylog("ERROR: Ammo is nil")
    end
end
Ammo.GetScrapParts = function(self)
    --get amount of scrap parts from options
    if isAPAmmo(self) then
        mylog("INFO: Get ScrapPerAPAmmo from option: " .. ScrapPerAPAmmo)
        return ScrapPerAPAmmo
    else
        mylog("INFO: Get ScrapPerNormalAmmo from option: " .. ScrapPerNormalAmmo)
        return ScrapPerNormalAmmo
    end
end

Ammo.GetGunPowder = function(self)
    --get amount of gunpowder from options
    if isAPAmmo(self) then
        mylog("INFO: Get GunPowderPerAPAmmo from option: " .. GunPowderPerAPAmmo)
        return GunPowderPerAPAmmo
    else
        mylog("INFO: Get GunPowderPerNormalAmmo from option: " .. GunPowderPerNormalAmmo)
        return GunPowderPerNormalAmmo
    end
end

