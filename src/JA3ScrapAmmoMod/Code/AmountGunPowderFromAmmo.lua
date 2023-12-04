function Ammo:AmountGunPowderFromAmmo()
    local gunPowder = Ammo:GetGunPowder(self)
    local amountOfGunPowder =  MulDivTrunc(self.Amount, gunPowder,  30)
    mylog("DEBUG: amountOfGunPowder= " .. tostring(amountOfGunPowder))
    return amountOfGunPowder
end