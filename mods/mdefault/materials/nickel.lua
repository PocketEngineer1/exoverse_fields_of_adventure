minetest.register_node("mdefault:stone_with_nickel", {
	description = "Stone with Nickel",
	tiles = {"mdefault_stone.png^mdefault_ore_nickel.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_nickel",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_nickel", {
	description = "Nickel Bar",
	inventory_image = "mdefault_bar_nickel.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_nickel", {
	description = "Nickel Lump",
	inventory_image = "mdefault_lump_nickel.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_nickel",
	recipe = "mdefault:lump_nickel",
})

minetest.register_craftitem("mdefault:piece_nickel", {
	description = "Nickel Piece",
	inventory_image = "mdefault_piece_nickel.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_nickel", {
	description = "Nickel Chunk",
	inventory_image = "mdefault_chunk_nickel.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_nickel",
	recipe = {
        {"mdefault:piece_nickel", "mdefault:piece_nickel"},
        {"mdefault:piece_nickel", "mdefault:piece_nickel"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_nickel",
	recipe = "mdefault:lump_nickel",
})

minetest.register_craftitem("mdefault:nugget_nickel", {
	description = "Nickel Nugget",
	inventory_image = "mdefault_nugget_nickel.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_nickel 9",
	recipe = {
        {"mdefault:bar_nickel"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_nickel",
	recipe = {
        {"mdefault:nugget_nickel", "mdefault:nugget_nickel", "mdefault:nugget_nickel"},
        {"mdefault:nugget_nickel", "mdefault:nugget_nickel", "mdefault:nugget_nickel"},
        {"mdefault:nugget_nickel", "mdefault:nugget_nickel", "mdefault:nugget_nickel"},
    },
})

minetest.register_craftitem("mdefault:dust_nickel", {
	description = "Nickel Dust",
	inventory_image = "mdefault_dust_nickel.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_nickel", {
	description = "Nickel Coin",
	inventory_image = "mdefault_coin_nickel.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_nickel", {
	description = "Nickel Plate",
	inventory_image = "mdefault_plate_nickel.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_nickel", {
	description = "Nickel Gear",
	inventory_image = "mdefault_gear_nickel.png",
	stack_max = 65535,
})