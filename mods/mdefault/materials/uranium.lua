minetest.register_node("mdefault:stone_with_uranium", {
	description = "Stone with Uranium",
	tiles = {"mdefault_stone.png^mdefault_ore_uranium.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_uranium",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_uranium", {
	description = "Uranium Bar",
	inventory_image = "mdefault_bar_uranium.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_uranium", {
	description = "Uranium Lump",
	inventory_image = "mdefault_lump_uranium.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_uranium",
	recipe = "mdefault:chunk_uranium",
})

minetest.register_craftitem("mdefault:piece_uranium", {
	description = "Uranium Piece",
	inventory_image = "mdefault_piece_uranium.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_uranium", {
	description = "Uranium Chunk",
	inventory_image = "mdefault_chunk_uranium.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_uranium",
	recipe = {
        {"mdefault:piece_uranium", "mdefault:piece_uranium"},
        {"mdefault:piece_uranium", "mdefault:piece_uranium"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_uranium",
	recipe = "mdefault:lump_uranium",
})

minetest.register_craftitem("mdefault:nugget_uranium", {
	description = "Uranium Nugget",
	inventory_image = "mdefault_nugget_uranium.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_uranium 9",
	recipe = {
        {"mdefault:bar_uranium"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_uranium",
	recipe = {
        {"mdefault:nugget_uranium", "mdefault:nugget_uranium", "mdefault:nugget_uranium"},
        {"mdefault:nugget_uranium", "mdefault:nugget_uranium", "mdefault:nugget_uranium"},
        {"mdefault:nugget_uranium", "mdefault:nugget_uranium", "mdefault:nugget_uranium"},
    },
})

minetest.register_craftitem("mdefault:dust_uranium", {
	description = "Uranium Dust",
	inventory_image = "mdefault_dust_uranium.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_uranium", {
	description = "Uranium Coin",
	inventory_image = "mdefault_coin_uranium.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_uranium", {
	description = "Uranium Plate",
	inventory_image = "mdefault_plate_uranium.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_uranium", {
	description = "Uranium Gear",
	inventory_image = "mdefault_gear_uranium.png",
	stack_max = 65535,
})