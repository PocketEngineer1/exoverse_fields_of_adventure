-- Register the hammer tool
minetest.register_tool("out_of_nothing:hammer", {
    description = "Hammer",
    inventory_image = "out_of_nothing_hammer.png",
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 0,
        damage_groups = { fleshy = 2 },
    },

    on_use = function(itemstack, player, pointed_thing)
        if pointed_thing.type == "node" then
            local pos = pointed_thing.under
            local node = minetest.get_node(pos)
            local inventory = player:get_inventory()
            
            if node.name == "mdefault:stone" then
                minetest.swap_node(pos, {name = "air"})
                inventory:add_item("main", "mdefault:cobble")
            elseif node.name == "mdefault:cobble" then
                minetest.swap_node(pos, {name = "air"})
                inventory:add_item("main", "mdefault:gravel")
            elseif node.name == "mdefault:gravel" then
                minetest.swap_node(pos, {name = "air"})
                inventory:add_item("main", "mdefault:sand")
            elseif node.name == "mdefault:sand" then
                minetest.swap_node(pos, {name = "air"})
                inventory:add_item("main", "mdefault:dust")
            end

            itemstack:add_wear(65535 / 100)
            return itemstack
        end
    end,
})