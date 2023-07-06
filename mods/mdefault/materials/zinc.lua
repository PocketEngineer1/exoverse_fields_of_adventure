minetest.register_node("mdefault:stone_with_zinc", {
	description = "Stone with Zinc",
	tiles = {"mdefault_stone.png^mdefault_ore_zinc.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_zinc",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_zinc", {
	description = "Zinc Bar",
	inventory_image = "mdefault_bar_zinc.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_zinc", {
	description = "Zinc Lump",
	inventory_image = "mdefault_lump_zinc.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_zinc",
	recipe = "mdefault:chunk_zinc",
})

minetest.register_craftitem("mdefault:piece_zinc", {
	description = "Zinc Piece",
	inventory_image = "mdefault_piece_zinc.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_zinc", {
	description = "Zinc Chunk",
	inventory_image = "mdefault_chunk_zinc.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_zinc",
	recipe = {
        {"mdefault:piece_zinc", "mdefault:piece_zinc"},
        {"mdefault:piece_zinc", "mdefault:piece_zinc"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_zinc",
	recipe = "mdefault:lump_zinc",
})

minetest.register_craftitem("mdefault:nugget_zinc", {
	description = "Zinc Nugget",
	inventory_image = "mdefault_nugget_zinc.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_zinc 9",
	recipe = {
        {"mdefault:bar_zinc"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_zinc",
	recipe = {
        {"mdefault:nugget_zinc", "mdefault:nugget_zinc", "mdefault:nugget_zinc"},
        {"mdefault:nugget_zinc", "mdefault:nugget_zinc", "mdefault:nugget_zinc"},
        {"mdefault:nugget_zinc", "mdefault:nugget_zinc", "mdefault:nugget_zinc"},
    },
})

minetest.register_craftitem("mdefault:dust_zinc", {
	description = "Zinc Dust",
	inventory_image = "mdefault_dust_zinc.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_zinc", {
	description = "Zinc Coin",
	inventory_image = "mdefault_coin_zinc.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_zinc", {
	description = "Zinc Plate",
	inventory_image = "mdefault_plate_zinc.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_zinc", {
	description = "Zinc Gear",
	inventory_image = "mdefault_gear_zinc.png",
	stack_max = 65535,
})