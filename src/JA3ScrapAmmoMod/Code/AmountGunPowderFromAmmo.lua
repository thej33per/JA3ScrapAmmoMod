function Ammo:AmountGunPowderFromAmmo()
    local gunPowder = self.GunPowder
    local amountOfGunPowder =  MulDivTrunc(self.Amount, gunPowder,  30)
    return amountOfGunPowder
end