function Inventory:AddAndStackGunPowder(item)
    MergeStackIntoContainer(self, "Inventory", item)
    if item.Amount > item.MaxStacks then
        local newItem = PlaceInventoryItem("BlackPowder")

        newItem.Amount = newItem.MaxStacks
        self:AddItem("Inventory", newItem)
        ObjModified(newItem)
        item.Amount = item.Amount - item.MaxStacks
        self:AddAndStackGunPowder(item)
    elseif item.Amount > 0 then
        item = self:AddItem("Inventory", item)
        ObjModified(item)
    end
end

function Inventory:AddItem(slot_name, item, left, top, local_execution)
    local pos, reason = self:CanAddItem(slot_name, item, left, top)
    print("pos: ", pos, ", reason: ", reason)
    if not pos then
        return false, reason
    end
    if reason == "current" then
        return pos, reason
    end
    item.owner = false
    if reason == "stack items" then
        local currentitem = self:GetItemInSlot(slot_name, false, left, top)
        currentitem.Amount = currentitem.Amount + item.Amount
        self:RemoveItem(slot_name, item)
        DoneObject(item)
    else
        local slot_items = self[slot_name]
        local idx = #slot_items + 1
        for i = 1, #slot_items, 2 do
            local cpos = slot_items[i]
            if pos <= cpos then
                idx = i
                break
            end
        end
        table.insert(slot_items, idx, pos)
        table.insert(slot_items, idx + 1, item)
        self[slot_name] = slot_items
    end
    return pos, reason
end