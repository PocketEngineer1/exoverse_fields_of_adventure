-- Shovels (dig crumbly)

minetest.register_tool("tools:shovel_wood", {
	description = "Wooden Shovel",
	inventory_image = "default_shovel_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[3]=0.50}, uses=30, maxlevel=0}
		},
	},
})

minetest.register_tool("tools:shovel_stone", {
	description = "Stone Shovel",
	inventory_image = "default_shovel_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[2]=0.50, [3]=0.30}, uses=60, maxlevel=0}
		},
	},
})

minetest.register_tool("tools:shovel_iron", {
	description = "Iron Shovel",
	inventory_image = "default_shovel_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.00, [2]=0.70, [3]=0.60}, uses=90, maxlevel=0}
		},
	},
})