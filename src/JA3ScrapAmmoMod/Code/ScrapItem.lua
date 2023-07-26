function ScrapItem(inventory, slot_name, item, squadBag, squadId)
    local partsAmount = item:AmountOfScrapPartsFromItem()
    local additional
    print("_Inventory: ", inventory)
    print("_slot_name: ", slot_name)
    print("_item: ", item)
    print("_squadBag: ", squadBag)
    print("_squadid", squadId)
    if inventory:IsEmpty("Inventory") then
        print("Inventory is empty")
        --todo create inventory object
        --todo create squadBag object
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
            local item = PlaceInventoryItem(res.restype)
            if IsKindOf(item, "InventoryStack") then
                item.Amount = res.amount
            end
            inventory:AddItem("Inventory", item)
            print("Inventory: ", inventory)
        end
    elseif IsKindOf(item, "Ammo") then
        local amountGunPowder = item:AmountGunPowderFromAmmo()
        local gunPowder = PlaceInventoryItem("BlackPowder")
        gunPowder.Amount = amountGunPowder
        inventory:AddItem("Inventory", gunPowder)
    end
    if item.ammo then
        UnloadWeapon(item, squadBag)
    end
    if 0 < partsAmount then
        local parts = PlaceInventoryItem("Parts")
        parts.Amount = partsAmount
        squadBag:AddAndStackItem(parts)
    end
    local removedItem, pos = inventory:RemoveItem(slot_name, item)
    DoneObject(removedItem)
    if IsKindOf(inventory, "Unit") and slot_name == inventory.current_weapon and inventory:IsIdleCommand() then
        inventory:SetCommand("Idle")
    end
end