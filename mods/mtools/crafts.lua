
-- Axes (Left)

minetest.register_craft({
	output = "mtools:axe_wood",
	recipe = {
		{"group:wood", "group:wood"},
		{"group:wood", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "mtools:axe_stone",
	recipe = {
		{"group:stone", "group:stone"},
		{"group:stone", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "mtools:axe_iron",
	recipe = {
		{"mdefault:bar_iron", "mdefault:bar_iron"},
		{"mdefault:bar_iron", "group:stick"},
		{"", "group:stick"},
	}
})

-- Axes (Right)

minetest.register_craft({
	output = "mtools:axe_wood",
	recipe = {
		{"group:wood", "group:wood"},
		{"group:stick", "group:wood"},
		{"group:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:axe_stone",
	recipe = {
		{"group:stone", "group:stone"},
		{"group:stick", "group:stone"},
		{"group:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:axe_iron",
	recipe = {
		{"mdefault:bar_iron", "mdefault:bar_iron"},
		{"group:stick", "mdefault:bar_iron"},
		{"group:stick", ""},
	}
})

-- Picks

minetest.register_craft({
	output = "mtools:pick_wood",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:pick_stone",
	recipe = {
		{"group:stone", "group:stone", "group:stone"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "mtools:pick_iron",
	recipe = {
		{"mdefault:bar_iron", "mdefault:bar_iron", "mdefault:bar_iron"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

-- Shovels

minetest.register_craft({
	output = "mtools:shovel_wood",
	recipe = {
		{"group:wood"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "mtools:shovel_stone",
	recipe = {
		{"group:stone"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "mtools:shovel_iron",
	recipe = {
		{"mdefault:bar_iron"},
		{"group:stick"},
		{"group:stick"},
	}
})

-- Shears

minetest.register_craft({
	output = "mtools:shears_wood",
	recipe = {
		{"group:wood", ""},
		{"group:stick", "group:wood"},
	}
})

minetest.register_craft({
	output = "mtools:shears_stone",
	recipe = {
		{"group:stone", ""},
		{"group:stick", "group:stone"},
	}
})

minetest.register_craft({
	output = "mtools:shears_iron",
	recipe = {
		{"mdefault:bar_iron", ""},
		{"group:stick", "mdefault:bar_iron"},
	}
})
