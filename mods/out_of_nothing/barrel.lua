minetest.register_node("out_of_nothing:barrel", {
    description = "Barrel",
	tiles = {"out_of_nothing_sieve.png"},
	is_ground_content = false,
	groups = {choppy=3, oddly_breakable_by_hand=1},
    on_rightclick = function(pos, node, clicker, itemstack)
        local player_name = clicker:get_player_name()
        if clicker:get_wielded_item():is_empty() then
            minetest.chat_send_player(player_name, "Item in hand required.")
        else
            -- Perform sifting action
            local random_value = math.random(1, 10)
            if minetest.get_item_group(itemstack.name, "plant") > 0 or minetest.get_item_group(itemstack.name, "leaves") > 0 then
                local pos_above = {x = pos.x, y = pos.y + 1, z = pos.z}
                local node_above = minetest.get_node(pos_above)
                if node_above.name == "air" then
                    itemstack:take_item()
                    minetest.add_item(pos_above, "mdefault:dirt")
                else
                    minetest.chat_send_player(player_name, "No space above the barrel!")
                end
            else
                minetest.chat_send_player(player_name, "Invalid item!")
            end
        end
    end,      
})

-- Add sieve recipes (optional)
minetest.register_craft({
    output = "out_of_nothing:barrel",
    recipe = {
        {"group:wood", "", "group:wood"},
        {"group:wood", "", "group:wood"},
        {"group:wood", "group:wood", "group:wood"},
    },
})