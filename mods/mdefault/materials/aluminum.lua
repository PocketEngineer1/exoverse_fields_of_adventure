minetest.register_node("mdefault:stone_with_aluminum", {
	description = "Stone with Aluminum",
	tiles = {"mdefault_stone.png^mdefault_ore_aluminum.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_aluminum",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_aluminum", {
	description = "Aluminum Bar",
	inventory_image = "mdefault_bar_aluminum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_aluminum", {
	description = "Aluminum Lump",
	inventory_image = "mdefault_lump_aluminum.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_aluminum",
	recipe = "mdefault:chunk_aluminum",
})

minetest.register_craftitem("mdefault:piece_aluminum", {
	description = "Aluminum Piece",
	inventory_image = "mdefault_piece_aluminum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_aluminum", {
	description = "Aluminum Chunk",
	inventory_image = "mdefault_chunk_aluminum.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_aluminum",
	recipe = {
        {"mdefault:piece_aluminum", "mdefault:piece_aluminum"},
        {"mdefault:piece_aluminum", "mdefault:piece_aluminum"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_aluminum",
	recipe = "mdefault:lump_aluminum",
})

minetest.register_craftitem("mdefault:nugget_aluminum", {
	description = "Aluminum Nugget",
	inventory_image = "mdefault_nugget_aluminum.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_aluminum 9",
	recipe = {
        {"mdefault:bar_aluminum"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_aluminum",
	recipe = {
        {"mdefault:nugget_aluminum", "mdefault:nugget_aluminum", "mdefault:nugget_aluminum"},
        {"mdefault:nugget_aluminum", "mdefault:nugget_aluminum", "mdefault:nugget_aluminum"},
        {"mdefault:nugget_aluminum", "mdefault:nugget_aluminum", "mdefault:nugget_aluminum"},
    },
})

minetest.register_craftitem("mdefault:dust_aluminum", {
	description = "Aluminum Dust",
	inventory_image = "mdefault_dust_aluminum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_aluminum", {
	description = "Aluminum Coin",
	inventory_image = "mdefault_coin_aluminum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_aluminum", {
	description = "Aluminum Plate",
	inventory_image = "mdefault_plate_aluminum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_aluminum", {
	description = "Aluminum Gear",
	inventory_image = "mdefault_gear_aluminum.png",
	stack_max = 65535,
})