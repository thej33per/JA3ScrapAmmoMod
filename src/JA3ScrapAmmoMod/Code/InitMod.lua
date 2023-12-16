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
    elseif string.find(tostring(msg), "DEBUG") ~= nil then
        level = 3
    end
    mylogL(msg, level)
end

local function toBoolean(str)
    if str == true or str == "true" then
        return true
    end
    return false
end

local dlg = GetInGameInterfaceModeDlg()
local partyUi = dlg and dlg.idParty
if partyUi then
    partyUi:RespawnContent()
end
local weaponUi = dlg and dlg:ResolveId("idWeaponUI")
if weaponUi then
    weaponUi:RespawnContent()
end

local function findParentXtByTextId(obj, id)
    if obj.Text and TGetID(obj.Text) == id then
        return obj, true
    end
    for _, sub in ipairs(obj) do
        local match, isDirect = findParentXtByTextId(sub, id)
        if isDirect and match then
            return obj, false
        end
        if match then
            return match, false
        end
    end
end

local scrapAllXT = PlaceObj("XTemplateTemplate", {
    "comment",
    "scrap all",
    "__condition",
    function(parent, context)
        return context and InventoryIsContainerOnSameSector(context) and context.item and context.item.ScrapParts and context.item.ScrapParts > 0 and context.item.object_class ~= "Medicine" and IsKindOf(context.item, "InventoryStack") and context.item.Amount > 1
    end,
    "__template",
    "ContextMenuButton",
    "Id",
    "sam_scrapall",
    "FocusOrder",
    point(1, 11),
    "OnContextUpdate",
    function(self, context, ...)
        local item = context.item
        if item.Amount < 30 then
            self:SetEnabled(false)
            return
        end
        self:SetEnabled(not context.item.locked)
    end,
    "OnPress",
    function(self, gamepad)
        local context = self:ResolveId("node").context
        if not context then
            return
        end
        CreateRealTimeThread(function()
            local popupHost = GetInGameInterface()
            local scrapPrompt = CreateQuestionBox(popupHost, T(862015339762, "Scrap all"), T(131046045582, "This action will destroy the entire stack. Are you sure?"), T(689884995409, "Yes"), T(782927325160, "No"))
            local resp = scrapPrompt:Wait()
            if resp ~= "ok" then
                return
            else
                local item = context.item
                if not g_ItemIdToItem[item.id] then
                    return
                end
                local unit = context.unit
                local container = context.context
                local slot_name = context.slot_wnd.slot_name
                NetSquadBagAction(unit, container, slot_name, item, gv_SquadBag, "scrapall", 0)
                PlayFX("Scrap", "start", item)
            end
        end)
        context.slot_wnd:ClosePopup()
    end,
    "Text",
    T(522902019009, "SCRAP ALL")
}, {
    PlaceObj("XTemplateWindow", {
        "__class",
        "XText",
        "Margins",
        box(0, 0, 10, 0),
        "Dock",
        "right",
        "HandleMouse",
        false,
        "TextStyle",
        "SatelliteContextMenuText",
        "Translate",
        true,
        "TextHAlign",
        "right"
    }, {
        PlaceObj("XTemplateFunc", {
            "name",
            "Open(self)",
            "func",
            function(self)
                self:OnSetRollover(false)
                XText.Open(self)
            end
        }),
        PlaceObj("XTemplateFunc", {
            "name",
            "OnSetRollover(self, rollover)",
            "func",
            function(self, rollover)
                local context = self.context
                self:SetTextStyle(rollover and self.enabled and "SatelliteContextMenuTextRollover" or "SatelliteContextMenuText")
                local item = context.item
                local parts = 1
                if IsKindOf(item, "Ammo") then
                    if item.Amount < 30 then
                        parts = 0
                    else
                        parts = item:AmountOfScrapPartsFromItem()
                    end
                else
                    parts = item:AmountOfScrapPartsFromItem() * item.Amount
                end
                self:SetText(T({
                    399084673498,
                    "<parts> PARTS",
                    parts = parts
                }))
            end
        })
    })
})

local scrapXT = PlaceObj("XTemplateTemplate", {
    "comment",
    "scrap",
    "__condition",
    function(parent, context)
        return context and InventoryIsContainerOnSameSector(context) and context.item and context.item.ScrapParts and context.item.ScrapParts > 0 and context.item.object_class ~= "Medicine"
    end,
    "__template",
    "ContextMenuButton",
    "Id",
    "sam_scrap",
    "FocusOrder",
    point(1, 10),
    "OnContextUpdate",
    function(self, context, ...)
        local item = context.item
        if item.Amount < 30 then
            self:SetEnabled(false)
            return
        end
        self:SetEnabled(not context.item.locked)

    end,
    "OnPress",
    function(self, gamepad)
        local context = self:ResolveId("node").context
        if not context then
            return
        end
        CreateRealTimeThread(function()
            local popupHost = GetInGameInterface()
            local scrapPrompt
            local resp
            local item = context.item
            if not IsKindOf(item, "Ammo") then
                scrapPrompt = CreateQuestionBox(popupHost, T(271835460421, "Scrap"), T(193228332373, "This action will destroy the item. Are you sure?"), T(689884995409, "Yes"), T(782927325160, "No"))
                resp = scrapPrompt:Wait()
            else
                resp = "ok"
            end
            if resp ~= "ok" then
                return
            else
                if not g_ItemIdToItem[item.id] then
                    return
                end
                local unit = context.unit
                local container = context.context
                local slot_name = context.slot_wnd.slot_name
                NetSquadBagAction(unit, container, slot_name, item, gv_SquadBag, "scrap", 0)
                PlayFX("Scrap", "start", item)
            end
        end)
        context.slot_wnd:ClosePopup()
    end,
    "Text",
    T(486269126756, "SCRAP")
}, {
    PlaceObj("XTemplateWindow", {
        "__class",
        "XText",
        "Margins",
        box(0, 0, 10, 0),
        "Dock",
        "right",
        "HandleMouse",
        false,
        "TextStyle",
        "SatelliteContextMenuText",
        "Translate",
        true,
        "TextHAlign",
        "right"
    }, {
        PlaceObj("XTemplateFunc", {
            "name",
            "Open(self)",
            "func",
            function(self)
                self:OnSetRollover(false)
                XText.Open(self)
            end
        }),
        PlaceObj("XTemplateFunc", {
            "name",
            "OnSetRollover(self, rollover)",
            "func",
            function(self, rollover)
                local context = self.context
                self:SetTextStyle(rollover and self.enabled and "SatelliteContextMenuTextRollover" or "SatelliteContextMenuText")
                local item = context.item
                local parts = 1
                if IsKindOf(item, "Ammo") then
                    if item.Amount < 30 then
                        parts = 0
                    else
                        parts = item:GetScrapParts()
                    end

                else
                    parts = item:AmountOfScrapPartsFromItem()
                end
                self:SetText(T({
                    399084673498,
                    "<parts> PARTS",
                    parts = parts
                }))
            end
        })
    })
})

local function remove_scrapAllContextMenu()
    mylog('DEBUG: remove scrapAll button in context menu in inventory')
    local xt = findParentXtByTextId(XTemplates.InventoryContextMenu, 522902019009)
    if not xt then
        mylog("DEBUG: scrapAll XTemplate dont exists. skip removing")
        return
    end

    mylog("DEBUG: found parent XTemplate: " .. tostring(xt))

    local removeScrapAllXtFn = function()
        local toRemoveList = {"scrapall", "sam_scrapall", "scrap", "sam_scrap"}
        for _, XttoRemove in ipairs(toRemoveList) do
            for i, p in ipairs(xt) do
                if p.Id == XttoRemove then
                    table.remove(xt, i)
                    mylog("DEBUG: removed Xt with id = " .. tostring(p.Id))
                    break
                end
            end

        end

    end
    local readdAllXtFn = function()
        for i, p in ipairs(xt) do
        mylog("DEBUG: context Xt with id = " .. tostring(p.Id))
        --    if p.Id ~= nil then
        --        local oldId = p.Id
        --        p.Id = "sam_" .. oldId
        --    end
        --    table.insert(removedXt, p)
        --    table.remove(xt, i)
        end

        --for i, p in ipairs(removedXt) do
        --    mylog("DEBUG: add Xt with id = " .. tostring(p.Id))
        --    table.insert(xt, p)
        --end
        mylog("DEBUG: add Xt with id = " .. tostring(scrapXT.Id))
        table.insert(xt, scrapXT)
        mylog("DEBUG: add Xt with id = " .. tostring(scrapAllXT.Id))
        table.insert(xt, scrapAllXT)
    end
    removeScrapAllXtFn()
    readdAllXtFn()
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

local function findXtListByTextId(obj, id)
    local matches = {}
    if obj.Text and TGetID(obj.Text) == id then
        return { obj }
    end
    for it1, sub in ipairs(obj) do
        local sub_matches = findXtListByTextId(sub, id)
        for it2, sub_match in ipairs(sub_matches) do
            table.insert(matches, sub_match)
        end
    end
    return matches
end

local function deactivate_scrapAllContextMenu()
    mylog("DEBUG: deactivate scrapAll button in context menu for ammo in inventory")
    local xts = findXtListByTextId(XTemplates.InventoryContextMenu, 522902019009)
    for _, xt in ipairs(xts) do
        if not xt then
            mylog("DEBUG: XTemplate nicht gefunden")
            return
        end
        mylog("DEBUG: found parent XTemplate: " .. tostring(xt))
        xt:SetProperty("ContextUpdateOnOpen", true)
        xt:SetProperty("OnContextUpdate", function(self, context, ...)
            print("DEBUG: found XTemplate: " .. self)
            self:setProperty("__condition", print("DEBUG: XTemplate overridden") and context and InventoryIsContainerOnSameSector(context) and context.item and not IsKindOf(context.item, "Ammo") and context.item.ScrapParts and context.item.ScrapParts > 0 and context.item.object_class ~= "Medicine"and IsKindOf(context.item, "InventoryStack") and context.item.Amount > 1 and context.item.ScrapParts and not IsKindOf(context.item, "Ammo"))
            return XContextControl.OnContextUpdate(self, context)
        end
        )

    end
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

    local apply = remove_scrapAllContextMenu()
    --apply2 = deactivate_scrapAllContextMenu()

end

OnMsg.ModsReloaded = InitJA3ScrapAmmoMod

