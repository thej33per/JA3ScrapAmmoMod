local modId = "JA3ScrapAmmoMod" -- unique identifier assigned by JA3 Mod Editor
local modName = "JA3ScrapAmmoMod"
local modVersion = "1.2"

local logEnabled = false
local logToConsole = true
local logToSnype = true

ScrapPerNormalAmmo = 2 --default
ScrapPerAPAmmo = 4 --default
GunPowderPerNormalAmmo = 1 --default
GunPowderPerAPAmmo = 1 --default

logLevel = 0 -- 0 = off / errors only, 1 = warning, 2 = info, 3 = debug

local function mylogL(msg, level)
    if logEnabled then
        if logLevel >= level then
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

local function getNumberFromModItemOptionChoice(optionName)
    if CurrentModOptions[optionName] ~= nil and CurrentModOptions[optionName] ~= "" then
        local choice = CurrentModOptions[optionName]
        local newchoice = string.sub(choice, 1, 1)
        return tonumber(newchoice)
    end
end

local function toBoolean(str)
    if str == true or str == "true" then
        return true
    end
    return false
end

local function InitJA3ScrapAmmoMod()
    print("INFO: " .. modName .. " [v" .. modVersion .. "] mod enabled")
    if (CurrentModOptions["Logging"] ~= nil) then
        logEnabled = toBoolean(CurrentModOptions["Logging"])
    else
        print("ERROR: Logging is nil")
    end
    if CurrentModOptions["LogLevel"] ~= nil and CurrentModOptions["LogLevel"] ~= "" then
        logLevel = tonumber(CurrentModOptions["LogLevel"])
    else
        print("WARNING: LogLevel is empty, using default")
    end
    mylogL("INFO: logging enabled, logLevel: " .. logLevel, 0)
    if CurrentModOptions["ScrapPerNormalAmmo"] ~= nil and CurrentModOptions["ScrapPerNormalAmmo"] ~= "" then
        ScrapPerNormalAmmo = getNumberFromModItemOptionChoice("ScrapPerNormalAmmo")
        mylog("INFO: option ScrapPerNormalAmmo: " .. tostring(ScrapPerNormalAmmo))
    else
        mylog("WARNING: fallback to default ScrapPerNormalAmmo: " .. tostring(ScrapPerNormalAmmo))
    end
    if CurrentModOptions["ScrapPerAPAmmo"] ~= nil and CurrentModOptions["ScrapPerAPAmmo"] ~= ""  then
        ScrapPerAPAmmo = getNumberFromModItemOptionChoice("ScrapPerAPAmmo")
        mylog("INFO: option ScrapPerAPAmmo: " .. tostring(ScrapPerAPAmmo))
    else
        mylog("WARNING: fallback to default ScrapPerAPAmmo: " .. tostring(ScrapPerAPAmmo))
    end
    if CurrentModOptions["GunPowderPerNormalAmmo"] ~= nil and CurrentModOptions["GunPowderPerNormalAmmo"] ~= "" then
        GunPowderPerNormalAmmo = getNumberFromModItemOptionChoice("GunPowderPerNormalAmmo")
        mylog("INFO: option GunPowderPerNormalAmmo: " .. tostring(GunPowderPerNormalAmmo))
    else
        mylog("WARNING: fallback to default GunPowderPerNormalAmmo: " .. tostring(GunPowderPerNormalAmmo))
    end
    if CurrentModOptions["GunPowderPerAPAmmo"] ~= nil and CurrentModOptions["GunPowderPerAPAmmo"] ~= "" then
        GunPowderPerAPAmmo = getNumberFromModItemOptionChoice("GunPowderPerAPAmmo")
        mylog("INFO: option GunPowderPerAPAmmo: " .. tostring(GunPowderPerAPAmmo))
    else
        mylog("WARNING: fallback to default GunPowderPerAPAmmo: " .. tostring(GunPowderPerAPAmmo))
    end
end

OnMsg.ModsReloaded = InitJA3ScrapAmmoMod
