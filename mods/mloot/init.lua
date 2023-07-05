mloot = {}

function mloot.generateLoot(loottable)
    local totalWeight = 0
    
    -- Calculate the total weight
    for _, entry in ipairs(loottable) do
        totalWeight = totalWeight + entry.weight
    end
    
    -- Generate a random number within the total weight
    local randomNumber = math.random(totalWeight)
    
    -- Iterate over the loot table and find the corresponding item
    local currentWeight = 0
    for _, entry in ipairs(loottable) do
        currentWeight = currentWeight + entry.weight
        if randomNumber <= currentWeight then
            return entry.item
        end
    end
    
    -- If no item is found (shouldn't happen), return nil
    return nil
end