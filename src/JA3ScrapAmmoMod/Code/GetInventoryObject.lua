function GetFirstUnitInventoryFromSquad(squadId)
    local unitsInSquad = gv_Squads[squadId].units
    print("unitsInSquad: ", unitsInSquad)
    local firstUnit = gv_UnitData[unitsInSquad[1]]
    print("firstUnit: ", firstUnit)
    --TODO get right inventoryObject
    local inventoryObject = firstUnit.Inventory
    inventory = inventoryObject
end