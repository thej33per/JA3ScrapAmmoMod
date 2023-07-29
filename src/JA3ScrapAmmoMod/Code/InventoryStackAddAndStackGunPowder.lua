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