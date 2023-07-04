-- Shovels (dig crumbly)

minetest.register_tool("mtools:shovel_wood", {
	description = "Wooden Shovel",
	inventory_image = "mtools_shovel_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[3]=0.50}, uses=100, maxlevel=0}
		},
	},
})

minetest.register_tool("mtools:shovel_stone", {
	description = "Stone Shovel",
	inventory_image = "mtools_shovel_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[2]=0.50, [3]=0.30}, uses=200, maxlevel=0}
		},
	},
})

minetest.register_tool("mtools:shovel_iron", {
	description = "Iron Shovel",
	inventory_image = "mtools_shovel_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.00, [2]=0.70, [3]=0.10}, uses=300, maxlevel=0}
		},
	},
})