local options = CurrentModOptions or {}
function OnMsg.ApplyModOptions()
    options = CurrentModOptions
end

local function getNumberFromModOptionChoice(option)
    if option ~= nil and option ~= "" then
        local choice = option
        local newchoice = string.sub(choice, 1, 1)
        return tonumber(newchoice)
    end
end

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
        mylog("INFO: Get ScrapPerAPAmmo from option: " .. options.sam_ScrapPerAPAmmo)
        return getNumberFromModOptionChoice(options.sam_ScrapPerAPAmmo)
    else
        mylog("INFO: Get ScrapPerNormalAmmo from option: " .. options.sam_ScrapPerNormalAmmo)
        return getNumberFromModOptionChoice(options.sam_ScrapPerNormalAmmo)
    end
end

Ammo.GetGunPowder = function(self)
    --get amount of gunpowder from options
    if isAPAmmo(self) then
        mylog("INFO: Get GunPowderPerAPAmmo from option: " .. options.sam_GunPowderPerAPAmmo)
        return getNumberFromModOptionChoice(options.sam_GunPowderPerAPAmmo)
    else
        mylog("INFO: Get GunPowderPerNormalAmmo from option: " .. options.sam_GunPowderPerNormalAmmo)
        return getNumberFromModOptionChoice(options.sam_GunPowderPerNormalAmmo)
    end
end

