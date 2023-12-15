local modId = "JA3ScrapAmmoMod" -- unique identifier assigned by JA3 Mod Editor
local modName = "JA3ScrapAmmoMod"
local modVersion = "1.2"

local logEnabled = false
local logToConsole = true
local logToSnype = true

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

local function mylogL(msg, level)
    if logEnabled then
        if getNumberFromModOptionChoice(options.sam_LogLevel) >= level then
            if logToConsole then
                print("<JA3SAM> " .. msg)
            end
            if logToSnype then
                CombatLog("debug", "<JA3SAM> " .. msg)
            end
        end
    end
end

function mylog(msg)
    local level = 2 -- default to verbose if not defined
    if string.find(tostring(msg), "ERROR") ~= nil then
        level = 0 -- mandatory message
    elseif string.find(tostring(msg), "WARNING") ~= nil then
        level = 1
    elseif string.find(tostring(msg), "INFO") ~= nil then
        level = 2
    end
    mylogL(msg, level)
end

local function toBoolean(str)
    if str == true or str == "true" then
        return true
    end
    return false
end

local function InitJA3ScrapAmmoMod()
    print("INFO: " .. modName .. " [v" .. modVersion .. "] mod enabled")
    if (options.sam_Logging ~= nil) then
        logEnabled = toBoolean(options.sam_Logging)
    else
        print("ERROR: Logging is nil")
    end
    if options.sam_LogLevel ~= nil and options.sam_LogLevel ~= "" then
        logLevel = tonumber(options.sam_LogLevel)
    else
        print("WARNING: LogLevel is empty, using default")
    end
    mylogL("INFO: logging enabled, logLevel: " .. options.sam_LogLevel, 0)
    if options.sam_ScrapPerNormalAmmo ~= nil and options.sam_ScrapPerNormalAmmo ~= "" then
        mylog("INFO: option ScrapPerNormalAmmo: " .. tostring(options.sam_ScrapPerNormalAmmo))
    else
        mylog("WARNING: fallback to default ScrapPerNormalAmmo: " .. tostring(options.sam_ScrapPerNormalAmmo))
    end
    if options.sam_ScrapPerAPAmmo ~= nil and options.sam_ScrapPerAPAmmo ~= ""  then
        mylog("INFO: option ScrapPerAPAmmo: " .. tostring(options.sam_ScrapPerAPAmmo))
    else
        mylog("WARNING: fallback to default ScrapPerAPAmmo: " .. tostring(options.sam_ScrapPerAPAmmo))
    end
    if options.sam_GunPowderPerNormalAmmo ~= nil and options.sam_GunPowderPerNormalAmmo ~= "" then
        mylog("INFO: option GunPowderPerNormalAmmo: " .. tostring(options.sam_GunPowderPerNormalAmmo))
    else
        mylog("WARNING: fallback to default GunPowderPerNormalAmmo: " .. tostring(sam_GunPowderPerNormalAmmo))
    end
    if options.sam_GunPowderPerAPAmmo ~= nil and options.sam_GunPowderPerAPAmmo ~= "" then
        mylog("INFO: option GunPowderPerAPAmmo: " .. tostring(options.sam_GunPowderPerAPAmmo))
    else
        mylog("WARNING: fallback to default GunPowderPerAPAmmo: " .. tostring(options.sam_GunPowderPerAPAmmo))
    end

    apply = deactivate_scrapAllContextMenu()

    local dlg = GetInGameInterfaceModeDlg()
    local partyUi = dlg and dlg.idParty
    if partyUi then
        partyUi:RespawnContent()
    end
    local weaponUi = dlg and dlg:ResolveId("idWeaponUI")
    if weaponUi then
        weaponUi:RespawnContent()
    end
end

local function findXtByTextId(obj, id)
    if obj.Text and TGetID(obj.Text) == id then
        return obj
    end
    for _, sub in ipairs(obj) do
        local match = findXtByTextId(sub, id)
        if match then
            return match
        end
    end
end

function deactivate_scrapAllContextMenu()
    mylog("DEBUG: deactivate scrapAll button in context menu for ammo in inventory")
    local xt = findXtByTextId(XTemplates.InventoryContextMenu, 522902019009)
    if not xt then
        mylog("DEBUG: XTemplate nicht gefunden")
        return
    end
    mylog("DEBUG: found parent XTemplate: " .. tostring(xt))
    xt:SetProperty("ContextUpdateOnOpen", true)
    xt:SetProperty("OnContextUpdate", function(self, context, ...)
            print("DEBUG: found XTemplate: " .. self)
            self.setProperty("__condition", print("DEBUG: XTemplate overridden") and context and InventoryIsContainerOnSameSector(context) and context.item and not IsKindOf(context.item, "Ammo") and context.item.ScrapParts and context.item.ScrapParts > 0 and context.item.object_class ~= "Medicine"and IsKindOf(context.item, "InventoryStack") and context.item.Amount > 1 and context.item.ScrapParts)
            return XContextControl.OnContextUpdate(self, context)
        end
    )
end



OnMsg.ModsReloaded = InitJA3ScrapAmmoMod
