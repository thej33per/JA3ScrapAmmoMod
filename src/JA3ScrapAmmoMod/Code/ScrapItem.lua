-- override function ScrapItem in Lua\Inventory.lua declaration

function ScrapItem(inventory, slot_name, item, amount, squadBag, squadId)
    local is_stack = IsKindOf(item, "InventoryStack")
    local isAmmo = IsKindOf(item, "Ammo")
    if is_stack then
        amount = amount and Min(amount, item.Amount) or item.Amount
    end
    amount = amount or 1
    local partsAmount = 0
    if isAmmo then
        partsAmount = item:AmountOfScrapPartsFromItem()
    else
        partsAmount = item:AmountOfScrapPartsFromItem() * amount
    end
    local additional
    if inventory:IsEmpty("Inventory") then
        inventory = GetFirstUnitWithInventorySpaceFromSquad(squadId, item)
        squadBag = GetSquadBagInventory(squadId)
    end
    if IsKindOf(inventory, "SectorStash") then
        squadBag = inventory
    end
    if IsKindOf(item, "Firearm") then
        additional = item:GetSpecialScrapItems()
    end
    if next(additional) then
        local units = gv_Squads[squadId].units
        local unit_id = table.max(units, function(unit_id)
            return gv_UnitData[unit_id].Mechanical
        end)
        local max_mech = gv_UnitData[unit_id].Mechanical / 2
        local rnd_unit = gv_UnitData[units[1]]
        local rand = rnd_unit:Random(100)
        if max_mech > rand then
            local res_idx = 1 + rnd_unit:Random(#additional)
            local res = additional[res_idx]
            local res_item = PlaceInventoryItem(res.restype)
            if IsKindOf(res_item, "InventoryStack") then
                res_item.Amount = res.amount
            end
            local add_slot_name = GetContainerInventorySlotName(inventory)
            inventory:AddItem(add_slot_name, res_item)
        end
    elseif isAmmo then
        local amountGunPowder = item:AmountGunPowderFromAmmo()
        local gunPowder = PlaceInventoryItem("BlackPowder")
        gunPowder.Amount = amountGunPowder
        inventory:AddAndStackGunPowder(gunPowder)
    end
    if item.ammo then
        UnloadWeapon(item, squadBag)
    end
    if 0 < partsAmount then
        local parts = PlaceInventoryItem("Parts")
        parts.Amount = partsAmount
        squadBag:AddAndStackItem(parts)
    end
    if isAmmo then
        local scrapedAmmo = 30 * partsAmount / item:GetScrapParts()
        if scrapedAmmo > 0 then
            mylog("INFO: scrapedAmmo = " .. scrapedAmmo)
            local remainingAmmoAmount = item.Amount - scrapedAmmo
            item.Amount = remainingAmmoAmount
            if item.Amount > 0 then
                ObjModified(item)
            else
                mylog("DEBUG: remainingAmmoAmount= 0 -> removing ammo stack")
                local removedItem, pos = inventory:RemoveItem(slot_name, item)
                DoneObject(removedItem)
            end
        else
            mylog("DEBUG: scrapedAmmo = 0, abort scrapping")
        end
    else
        if is_stack then
            item.Amount = Max(0, item.Amount - amount)
        end
        if not is_stack or item.Amount == 0 then
            local removedItem, pos = inventory:RemoveItem(slot_name, item)
            DoneObject(removedItem)
        end
    end
    if IsKindOf(inventory, "Unit") and slot_name == inventory.current_weapon and inventory:IsIdleCommand() then
        inventory:SetCommand("Idle")
    end
end