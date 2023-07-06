mdefault.tree_growth_times = {
    normal = {min = 300, max = 600}
}

minetest.register_node("mdefault:sapling_normal", {
	description = "Normal Sapling",
	drawtype = "plantlike",
	tiles = {"mdefault_sapling_normal.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, choppy = 3, flammable = 2, plant = 1},
	stack_max = 65535,

    on_construct = function(pos)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(mdefault.tree_growth_times.normal.min, mdefault.tree_growth_times.normal.max))
    end,

    on_timer = function(pos, elapsed)
        local under_pos = {x = pos.x - 3, y = pos.y - 2, z = pos.z - 3}
        local final_pos = {x = pos.x - 3, y = pos.y - 1, z = pos.z - 3}
        local rotation = math.random(0, 3) * 180

        local schematic_path = minetest.get_modpath("mapgen").."/schematics/normal_tree.mts"
        
        -- if minetest.get_item_group(minetest.get_node(under_pos), "soil") > 0 then
            minetest.set_node(pos, {name="air"})
            minetest.place_schematic(final_pos, schematic_path, tostring(rotation), nil, false)
        -- end
    end,
})