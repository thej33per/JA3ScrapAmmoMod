if Ammo then
    Ammo.GetScrapParts = function(self)
        if self.class and InventoryItemDefs[self.class] then
			print("Class: ", self.class)
            return (InventoryItemDefs[self.class]:GetProperty("ScrapParts") or 0)
        end

        -- else fallback to default function
        local parts = InventoryItem.GetScrapParts(self)
        return parts
    end

    Ammo.GetGunPowder = function(self)
        if self.class and InventoryItemDefs[self.class] then
			print("Class: ", self.class)
            return (InventoryItemDefs[self.class]:GetProperty("GunPowder") or 0)
        end

        -- else fallback to default function
        local gunPowder = 1
        return gunPowder
    end
end
