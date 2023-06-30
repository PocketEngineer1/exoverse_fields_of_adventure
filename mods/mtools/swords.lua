-- Swords (deal damage)

minetest.register_tool("tools:sword_wood", {
	description = "Wooden Sword",
	inventory_image = "default_sword_wood.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		damage_groups = {fleshy=2},
	}
})

minetest.register_tool("tools:sword_stone", {
	description = "Stone Sword",
	inventory_image = "default_sword_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		damage_groups = {fleshy=5},
	}
})

minetest.register_tool("tools:sword_iron", {
	description = "Iron Sword",
	inventory_image = "default_sword_iron.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		damage_groups = {fleshy=10},
	}
})