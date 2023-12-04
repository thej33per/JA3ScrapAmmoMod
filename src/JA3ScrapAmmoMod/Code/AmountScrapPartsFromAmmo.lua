function Ammo:AmountOfScrapPartsFromItem()
    local parts = Ammo.GetScrapParts(self)
    local amount = self.Amount
    local amountOfScrap =  MulDivTrunc(amount, parts,  30)
    --mylog("DEBUG: AmmoObject= " .. tostring(self))
    mylog("DEBUG: amountOfScrap= " .. tostring(amountOfScrap))
    return amountOfScrap
end