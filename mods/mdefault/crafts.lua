minetest.register_craft({
    output = "mdefault:wood 4",
    recipe = {
        {"mdefault:tree"},
    },
})

minetest.register_craft({
    output = "mdefault:stick 4",
    recipe = {
        {"mdefault:wood"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_iron",
	recipe = "mdefault:lump_iron",
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:stone",
	recipe = "mdefault:cobble",
})