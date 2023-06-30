minetest.register_node("saplings:sapling_normal", {
    description = "Normal Sapling",
	drawtype = "plantlike",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
	tiles = {"saplings_normal.png"},
	groups = {snappy=3},
})