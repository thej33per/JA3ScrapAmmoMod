function GetFirstUnitInventoryFromSquad(squadId)
    local unitsInSquad = gv_Squads[squadId].units
    local firstUnit = gv_UnitData[unitsInSquad[1]]
    --TODO get right inventoryObject
    return firstUnit
end