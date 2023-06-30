
-- Axes (Left)

minetest.register_craft({
	output = "tools:axe_wood",
	recipe = {
		{"base:wood", "base:wood"},
		{"base:wood", "base:stick"},
		{"", "base:stick"},
	}
})

minetest.register_craft({
	output = "tools:axe_stone",
	recipe = {
		{"base:cobble", "base:cobble"},
		{"base:cobble", "base:stick"},
		{"", "base:stick"},
	}
})

minetest.register_craft({
	output = "tools:axe_iron",
	recipe = {
		{"base:bar_iron", "base:bar_iron"},
		{"base:bar_iron", "base:stick"},
		{"", "base:stick"},
	}
})

-- Axes (Right)

minetest.register_craft({
	output = "tools:axe_wood",
	recipe = {
		{"base:wood", "base:wood"},
		{"base:stick", "base:wood"},
		{"base:stick", ""},
	}
})

minetest.register_craft({
	output = "tools:axe_stone",
	recipe = {
		{"base:cobble", "base:cobble"},
		{"base:stick", "base:cobble"},
		{"base:stick", ""},
	}
})

minetest.register_craft({
	output = "tools:axe_iron",
	recipe = {
		{"base:bar_iron", "base:bar_iron"},
		{"base:stick", "base:bar_iron"},
		{"base:stick", ""},
	}
})

-- Picks

minetest.register_craft({
	output = "tools:pick_wood",
	recipe = {
		{"base:wood", "base:wood", "base:wood"},
		{"", "base:stick", ""},
		{"", "base:stick", ""},
	}
})

minetest.register_craft({
	output = "tools:pick_stone",
	recipe = {
		{"base:cobble", "base:cobble", "base:cobble"},
		{"", "base:stick", ""},
		{"", "base:stick", ""},
	}
})

minetest.register_craft({
	output = "tools:pick_iron",
	recipe = {
		{"base:bar_iron", "base:bar_iron", "base:bar_iron"},
		{"", "base:stick", ""},
		{"", "base:stick", ""},
	}
})

-- Shovels

minetest.register_craft({
	output = "tools:shovel_wood",
	recipe = {
		{"base:wood"},
		{"base:stick"},
		{"base:stick"},
	}
})

minetest.register_craft({
	output = "tools:shovel_stone",
	recipe = {
		{"base:cobble"},
		{"base:stick"},
		{"base:stick"},
	}
})

minetest.register_craft({
	output = "tools:shovel_iron",
	recipe = {
		{"base:bar_iron"},
		{"base:stick"},
		{"base:stick"},
	}
})

-- Shears

minetest.register_craft({
	output = "tools:shears_wood",
	recipe = {
		{"base:wood", ""},
		{"base:stick", "base:wood"},
	}
})

minetest.register_craft({
	output = "tools:shears_stone",
	recipe = {
		{"base:cobble", ""},
		{"base:stick", "base:cobble"},
	}
})

minetest.register_craft({
	output = "tools:shears_iron",
	recipe = {
		{"base:bar_iron", ""},
		{"base:stick", "base:bar_iron"},
	}
})
