-- Axes (dig choppy)

minetest.register_tool("mtools:axe_wood", {
	description = "Wooden Axe",
	inventory_image = "mtools_axe_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			choppy={times={[3]=0.80}, uses=100, maxlevel=0},
		},
	},
})

minetest.register_tool("mtools:axe_stone", {
	description = "Stone Axe",
	inventory_image = "mtools_axe_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			choppy={times={[2]=1.00, [3]=0.60}, uses=200, maxlevel=0},
		},
	},
})

minetest.register_tool("mtools:axe_iron", {
	description = "Iron Axe",
	inventory_image = "mtools_axe_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=300, maxlevel=0},
		},
	},
})
