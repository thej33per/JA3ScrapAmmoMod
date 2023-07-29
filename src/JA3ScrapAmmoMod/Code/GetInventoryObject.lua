function GetFirstUnitWithInventorySpaceFromSquad(squadId, item)
    local unitsInSquad = gv_Squads[squadId].units
    for i = 1, #unitsInSquad do
        local unit = gv_UnitData[unitsInSquad[i]]
        local freeSpace = unit:FindEmptyPosition(GetContainerInventorySlotName(unit), item)
        if freeSpace then
            return unit
        end
    end
end