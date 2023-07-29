function GetFirstUnitInventoryFromSquad(squadId)
    local unitsInSquad = gv_Squads[squadId].units
    local firstUnit = gv_UnitData[unitsInSquad[1]]
    return firstUnit
end