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
	output = "mdefault:stone",
	recipe = "mdefault:cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:glass",
	recipe = "group:sand",
})

minetest.register_craft({
    output = "mdefault:torch 4",
    recipe = {
        {"group:coal"},
        {"group:stick"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "group:tree",
	recipe = "mdefault:charcoal",
})

minetest.register_craft({
    output = "mdefault:sapling_normal",
    recipe = {
        {"mdefault:leaves", "mdefault:leaves", "mdefault:leaves"},
        {"mdefault:leaves", "mdefault:leaves", "mdefault:leaves"},
        {"mdefault:leaves", "mdefault:leaves", "mdefault:leaves"},
    },
})