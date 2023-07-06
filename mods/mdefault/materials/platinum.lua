minetest.register_node("mdefault:stone_with_platinum", {
	description = "Stone with Platinum",
	tiles = {"mdefault_stone.png^mdefault_ore_platinum.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_platinum",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_platinum", {
	description = "Platinum Bar",
	inventory_image = "mdefault_bar_platinum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_platinum", {
	description = "Platinum Lump",
	inventory_image = "mdefault_lump_platinum.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_platinum",
	recipe = "mdefault:chunk_platinum",
})

minetest.register_craftitem("mdefault:piece_platinum", {
	description = "Platinum Piece",
	inventory_image = "mdefault_piece_platinum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_platinum", {
	description = "Platinum Chunk",
	inventory_image = "mdefault_chunk_platinum.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_platinum",
	recipe = {
        {"mdefault:piece_platinum", "mdefault:piece_platinum"},
        {"mdefault:piece_platinum", "mdefault:piece_platinum"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_platinum",
	recipe = "mdefault:lump_platinum",
})

minetest.register_craftitem("mdefault:nugget_platinum", {
	description = "Platinum Nugget",
	inventory_image = "mdefault_nugget_platinum.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_platinum 9",
	recipe = {
        {"mdefault:bar_platinum"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_platinum",
	recipe = {
        {"mdefault:nugget_platinum", "mdefault:nugget_platinum", "mdefault:nugget_platinum"},
        {"mdefault:nugget_platinum", "mdefault:nugget_platinum", "mdefault:nugget_platinum"},
        {"mdefault:nugget_platinum", "mdefault:nugget_platinum", "mdefault:nugget_platinum"},
    },
})

minetest.register_craftitem("mdefault:dust_platinum", {
	description = "Platinum Dust",
	inventory_image = "mdefault_dust_platinum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_platinum", {
	description = "Platinum Coin",
	inventory_image = "mdefault_coin_platinum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_platinum", {
	description = "Platinum Plate",
	inventory_image = "mdefault_plate_platinum.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_platinum", {
	description = "Platinum Gear",
	inventory_image = "mdefault_gear_platinum.png",
	stack_max = 65535,
})