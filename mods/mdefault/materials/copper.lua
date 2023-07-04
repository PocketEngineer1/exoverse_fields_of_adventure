minetest.register_node("mdefault:stone_with_copper", {
	description = "Stone with copper",
	tiles = {"mdefault_stone.png^mdefault_ore_copper.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_copper",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_copper", {
	description = "copper Bar",
	inventory_image = "mdefault_bar_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_copper", {
	description = "copper Lump",
	inventory_image = "mdefault_lump_copper.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_copper",
	recipe = "mdefault:lump_copper",
})

minetest.register_craftitem("mdefault:piece_copper", {
	description = "copper Piece",
	inventory_image = "mdefault_piece_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_copper", {
	description = "copper Chunk",
	inventory_image = "mdefault_chunk_copper.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_copper",
	recipe = {
        {"mdefault:piece_copper", "mdefault:piece_copper"},
        {"mdefault:piece_copper", "mdefault:piece_copper"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_copper",
	recipe = "mdefault:lump_copper",
})

minetest.register_craftitem("mdefault:nugget_copper", {
	description = "copper Nugget",
	inventory_image = "mdefault_nugget_copper.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_copper 9",
	recipe = {
        {"mdefault:bar_copper"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_copper",
	recipe = {
        {"mdefault:nugget_copper", "mdefault:nugget_copper", "mdefault:nugget_copper"},
        {"mdefault:nugget_copper", "mdefault:nugget_copper", "mdefault:nugget_copper"},
        {"mdefault:nugget_copper", "mdefault:nugget_copper", "mdefault:nugget_copper"},
    },
})

minetest.register_craftitem("mdefault:dust_copper", {
	description = "copper Dust",
	inventory_image = "mdefault_dust_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_copper", {
	description = "copper Coin",
	inventory_image = "mdefault_coin_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_copper", {
	description = "copper Plate",
	inventory_image = "mdefault_plate_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_copper", {
	description = "copper Gear",
	inventory_image = "mdefault_gear_copper.png",
	stack_max = 65535,
})