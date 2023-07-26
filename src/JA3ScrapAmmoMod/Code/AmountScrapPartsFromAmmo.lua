function Ammo:AmountOfScrapPartsFromItem()
    local parts = Ammo.GetScrapParts(self)
    local amount = self.Amount
    local amountOfScrap =  MulDivTrunc(amount, parts,  30)
    return amountOfScrap
end