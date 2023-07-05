local lootTables = {}

lootTables.gravel = {
    { item = "mdefault:piece_aluminum", weight = 1 },
    { item = "mdefault:piece_nickel", weight = 1 },
    { item = "mdefault:piece_silver", weight = 1 },
    { item = "mdefault:piece_uranium", weight = 1 },
    { item = "mdefault:piece_lead", weight = 1 },
    { item = "mdefault:piece_platinum", weight = 1 },
    { item = "mdefault:piece_tin", weight = 1 },
    { item = "mdefault:piece_zinc", weight = 1 },
    { item = "mdefault:piece_gold", weight = 1 },
    { item = "mdefault:piece_copper", weight = 1 },
    { item = "mdefault:piece_iron", weight = 5 },
    { item = "mdefault:coal", weight = 10 },
}

-- Define the sieve node and register it
minetest.register_node("out_of_nothing:sieve", {
    description = "Sieve",
	tiles = {"out_of_nothing_sieve.png"},
	is_ground_content = false,
	groups = {choppy=3, oddly_breakable_by_hand=1},
    on_rightclick = function(pos, node, clicker, itemstack)
        local player_name = clicker:get_player_name()
        if clicker:get_wielded_item():is_empty() then
            minetest.chat_send_player(player_name, "Item in hand required.")
        else
            local drops = {}  -- Table to store the obtained resources
            
            -- Perform sifting action
            local random_value = math.random(1, 10)
            if clicker:get_wielded_item():get_name() == "mdefault:gravel" then
                itemstack:take_item()
                table.insert(drops, mloot.generateLoot(lootTables.gravel))
                table.insert(drops, mloot.generateLoot(lootTables.gravel))
                table.insert(drops, mloot.generateLoot(lootTables.gravel))
                table.insert(drops, mloot.generateLoot(lootTables.gravel))
            elseif clicker:get_wielded_item():get_name() == "mdefault:sand" then
                minetest.chat_send_player(player_name, "No loot table yet")
            elseif clicker:get_wielded_item():get_name() == "mdefault:dust" then
                minetest.chat_send_player(player_name, "No loot table yet")
            else
                minetest.chat_send_player(player_name, "Invalid item")
            end

            -- table.insert(loot, "example:loot_item")

            -- Check if there is air above the sieve
            local pos_above = {x = pos.x, y = pos.y + 1, z = pos.z}
            local node_above = minetest.get_node(pos_above)
            if node_above.name == "air" then
                -- Spawn item entities for the obtained resources
                for _, drop in ipairs(drops) do
                    minetest.add_item(pos_above, drop)
                end
            else
                -- Display a message or perform another action if there is no air
                minetest.chat_send_player(player_name, "No space above the sieve!")
            end
        end
    end,      
})

-- Add sieve recipes (optional)
minetest.register_craft({
    output = "out_of_nothing:sieve",
    recipe = {
        {"group:wood", "group:wood", "group:wood"},
        {"group:stick", "", "group:stick"},
        {"group:stick", "", "group:stick"},
    },
})