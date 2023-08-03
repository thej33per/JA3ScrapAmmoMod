function Ammo:AmountGunPowderFromAmmo()
    local gunPowder = Ammo:GetGunPowder(self)
    local amountOfGunPowder =  MulDivTrunc(self.Amount, gunPowder,  30)
    return amountOfGunPowder
end