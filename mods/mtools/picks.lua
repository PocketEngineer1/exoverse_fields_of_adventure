-- Pickaxes: Dig cracky

minetest.register_tool("tools:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "default_pick_wood.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[3]=2.00}, uses=30, maxlevel=0}
		},
	},
})

minetest.register_tool("tools:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "default_pick_stone.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[2]=1.20, [3]=0.80}, uses=60, maxlevel=0}
		},
	},
})

minetest.register_tool("tools:pick_iron", {
	description = "Iron Pickaxe",
	inventory_image = "default_pick_iron.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=90, maxlevel=0}
		},
	},
})