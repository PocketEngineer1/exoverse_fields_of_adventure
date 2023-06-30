minetest.register_node("saplings:sapling_normal", {
    description = "Normal Sapling",
	drawtype = "plantlike",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
	tiles = {"saplings_normal.png"},
    selection_box = {
        type = "fixed",
        fixed = {-0.5, -0.5, -0.5, 0.5, -0.5, 0.5},
    },

    -- Define the on_place callback for the sapling
    on_place = function(itemstack, placer, pointed_thing)
        local pos = pointed_thing.above
        local node = minetest.get_node(pos)

        -- Check for suitable conditions (e.g., air, appropriate soil)
        if minetest.get_item_group(node.name, "soil") > 0 and minetest.get_node_light(pos) >= 13 then
            -- Start the tree growth process by replacing the sapling with the growing tree
            minetest.set_node(pos, {"air"})
            minetest.place_schematic(pos, minetest.get_modpath("mapgen") .. "/schematics/normal_tree.mts", "0")
        end

        -- Remove one sapling from the player's inventory
        itemstack:take_item()

        return itemstack
    end,
})