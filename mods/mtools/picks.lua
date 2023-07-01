-- Pickaxes: Dig cracky

minetest.register_tool("mtools:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "mtools_pick_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[3]=2.00}, uses=30, maxlevel=0}
		},
	},
})

minetest.register_tool("mtools:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "mtools_pick_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[2]=2.00, [3]=1.50}, uses=60, maxlevel=0}
		},
	},
})

minetest.register_tool("mtools:pick_iron", {
	description = "Iron Pickaxe",
	inventory_image = "mtools_pick_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.00, [2]=1.50, [3]=1.00}, uses=90, maxlevel=0}
		},
	},
})