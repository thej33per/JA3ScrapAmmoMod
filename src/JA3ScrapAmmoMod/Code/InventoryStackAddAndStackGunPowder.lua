function Inventory:AddAndStackGunPowder(item)
    MergeStackIntoContainer(self, "Inventory", item)
    print("AddAndStackGunPowder::item: ", item)
    if item.Amount > item.MaxStacks then
        local newitem = PlaceInventoryItem("BlackPowder")
        newitem.Amount = newitem.MaxStacks
        self:AddItem("Inventory", newitem)
        ObjModified(newitem)
        item.Amount = item.Amount - item.MaxStacks
        self:AddAndStackGunPowder(item)
    end
    if item.Amount > 0 then
        --print("AddAndStackGunPowder::itemAmount: ", item.Amount)
        item = self:AddItem("Inventory", item)
        --TODO it is created one stack more then expected
        ObjModified(item)
    else
        DoneObject(item)
    end
end