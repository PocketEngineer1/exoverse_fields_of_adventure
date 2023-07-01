
-- Axes (Left)

minetest.register_craft({
	output = "mtools:axe_wood",
	recipe = {
		{"mdefault:wood", "mdefault:wood"},
		{"mdefault:wood", "mdefault:stick"},
		{"", "mdefault:stick"},
	}
})

minetest.register_craft({
	output = "mtools:axe_stone",
	recipe = {
		{"mdefault:cobble", "mdefault:cobble"},
		{"mdefault:cobble", "mdefault:stick"},
		{"", "mdefault:stick"},
	}
})

minetest.register_craft({
	output = "mtools:axe_iron",
	recipe = {
		{"mdefault:bar_iron", "mdefault:bar_iron"},
		{"mdefault:bar_iron", "mdefault:stick"},
		{"", "mdefault:stick"},
	}
})

-- Axes (Right)

minetest.register_craft({
	output = "mtools:axe_wood",
	recipe = {
		{"mdefault:wood", "mdefault:wood"},
		{"mdefault:stick", "mdefault:wood"},
		{"mdefault:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:axe_stone",
	recipe = {
		{"mdefault:cobble", "mdefault:cobble"},
		{"mdefault:stick", "mdefault:cobble"},
		{"mdefault:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:axe_iron",
	recipe = {
		{"mdefault:bar_iron", "mdefault:bar_iron"},
		{"mdefault:stick", "mdefault:bar_iron"},
		{"mdefault:stick", ""},
	}
})

-- Picks

minetest.register_craft({
	output = "mtools:pick_wood",
	recipe = {
		{"mdefault:wood", "mdefault:wood", "mdefault:wood"},
		{"", "mdefault:stick", ""},
		{"", "mdefault:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:pick_stone",
	recipe = {
		{"mdefault:cobble", "mdefault:cobble", "mdefault:cobble"},
		{"", "mdefault:stick", ""},
		{"", "mdefault:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:pick_iron",
	recipe = {
		{"mdefault:bar_iron", "mdefault:bar_iron", "mdefault:bar_iron"},
		{"", "mdefault:stick", ""},
		{"", "mdefault:stick", ""},
	}
})

-- Shovels

minetest.register_craft({
	output = "mtools:shovel_wood",
	recipe = {
		{"mdefault:wood"},
		{"mdefault:stick"},
		{"mdefault:stick"},
	}
})

minetest.register_craft({
	output = "mtools:shovel_stone",
	recipe = {
		{"mdefault:cobble"},
		{"mdefault:stick"},
		{"mdefault:stick"},
	}
})

minetest.register_craft({
	output = "mtools:shovel_iron",
	recipe = {
		{"mdefault:bar_iron"},
		{"mdefault:stick"},
		{"mdefault:stick"},
	}
})

-- Shears

minetest.register_craft({
	output = "mtools:shears_wood",
	recipe = {
		{"mdefault:wood", ""},
		{"mdefault:stick", "mdefault:wood"},
	}
})

minetest.register_craft({
	output = "mtools:shears_stone",
	recipe = {
		{"mdefault:cobble", ""},
		{"mdefault:stick", "mdefault:cobble"},
	}
})

minetest.register_craft({
	output = "mtools:shears_iron",
	recipe = {
		{"mdefault:bar_iron", ""},
		{"mdefault:stick", "mdefault:bar_iron"},
	}
})
