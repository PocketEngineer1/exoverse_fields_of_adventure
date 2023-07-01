-- Shears (dig snappy)

minetest.register_tool("mtools:shears_wood", {
	description = "Wooden Shears",
	inventory_image = "default_shears_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=1.00}, uses=30, maxlevel=0},
		},
	},
})

minetest.register_tool("mtools:shears_stone", {
	description = "Stone Shears",
	inventory_image = "default_shears_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.00, [3]=0.50}, uses=60, maxlevel=0},
		},
	},
})

minetest.register_tool("mtools:shears_iron", {
	description = "Iron Shears",
	inventory_image = "default_shears_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.00, [2]=0.50, [3]=0.25}, uses=90, maxlevel=0},
		},
	},
})