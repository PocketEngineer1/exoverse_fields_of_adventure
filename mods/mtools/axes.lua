-- Axes (dig choppy)

minetest.register_tool("tools:axe_wood", {
	description = "Wooden Axe",
	inventory_image = "default_axe_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			choppy={times={[3]=0.80}, uses=30, maxlevel=0},
		},
	},
})

minetest.register_tool("tools:axe_stone", {
	description = "Stone Axe",
	inventory_image = "default_axe_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			choppy={times={[2]=1.00, [3]=0.60}, uses=60, maxlevel=0},
		},
	},
})

minetest.register_tool("tools:axe_iron", {
	description = "Iron Axe",
	inventory_image = "default_axe_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=90, maxlevel=0},
		},
	},
})
