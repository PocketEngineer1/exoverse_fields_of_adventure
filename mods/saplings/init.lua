minetest.register_node("saplings:sapling_normal", {
    description = "Normal Sapling",
	drawtype = "plantlike",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
	tiles = {"saplings_normal.png"},
	groups = {snappy=3},
	stack_max = 65535,

    on_place = function(itemstack, placer, pointed_thing)
        if pointed_thing.type == "node" then
            local pos2 = pointed_thing.under
            local pos = pointed_thing.under
            pos = {x = pos.x - 3, y = pos.y, z = pos.z - 3}
            local rotation = 0

            local schematic_path = minetest.get_modpath("mapgen").."/schematics/normal_tree.mts"
            
            -- Place the schematic
            minetest.place_schematic(pos, schematic_path, tostring(rotation), nil, false)

            -- Consume the item from the player's inventory
            if not minetest.is_creative_enabled(placer:get_player_name()) then
                itemstack:take_item()
            end

            return itemstack
        end
    end,
})