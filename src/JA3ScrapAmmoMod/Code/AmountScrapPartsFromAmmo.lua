function Ammo:AmountOfScrapPartsFromItem()
    local parts = Ammo.GetScrapParts(self)
    local amountOfScrap =  MulDivTrunc(1, parts,  30)
    return amountOfScrap
end