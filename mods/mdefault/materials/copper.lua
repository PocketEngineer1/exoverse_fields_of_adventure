minetest.register_node("mdefault:stone_with_copper", {
	description = "Stone with Copper",
	tiles = {"mdefault_stone.png^mdefault_ore_copper.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_copper",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_copper", {
	description = "Copper Bar",
	inventory_image = "mdefault_bar_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_copper", {
	description = "Copper Lump",
	inventory_image = "mdefault_lump_copper.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_copper",
	recipe = "mdefault:chunk_copper",
})

minetest.register_craftitem("mdefault:piece_copper", {
	description = "Copper Piece",
	inventory_image = "mdefault_piece_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_copper", {
	description = "Copper Chunk",
	inventory_image = "mdefault_chunk_copper.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:Chunk_copper",
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
	description = "Copper Nugget",
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
	description = "Copper Dust",
	inventory_image = "mdefault_dust_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_copper", {
	description = "Copper Coin",
	inventory_image = "mdefault_coin_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_copper", {
	description = "Copper Plate",
	inventory_image = "mdefault_plate_copper.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_copper", {
	description = "Copper Gear",
	inventory_image = "mdefault_gear_copper.png",
	stack_max = 65535,
})