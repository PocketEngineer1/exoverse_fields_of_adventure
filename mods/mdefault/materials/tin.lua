minetest.register_node("mdefault:stone_with_tin", {
	description = "Stone with Tin",
	tiles = {"mdefault_stone.png^mdefault_ore_tin.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_tin",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_tin", {
	description = "Tin Bar",
	inventory_image = "mdefault_bar_tin.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_tin", {
	description = "Tin Lump",
	inventory_image = "mdefault_lump_tin.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_tin",
	recipe = "mdefault:chunk_tin",
})

minetest.register_craftitem("mdefault:piece_tin", {
	description = "Tin Piece",
	inventory_image = "mdefault_piece_tin.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_tin", {
	description = "Tin Chunk",
	inventory_image = "mdefault_chunk_tin.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_tin",
	recipe = {
        {"mdefault:piece_tin", "mdefault:piece_tin"},
        {"mdefault:piece_tin", "mdefault:piece_tin"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_tin",
	recipe = "mdefault:lump_tin",
})

minetest.register_craftitem("mdefault:nugget_tin", {
	description = "Tin Nugget",
	inventory_image = "mdefault_nugget_tin.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_tin 9",
	recipe = {
        {"mdefault:bar_tin"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_tin",
	recipe = {
        {"mdefault:nugget_tin", "mdefault:nugget_tin", "mdefault:nugget_tin"},
        {"mdefault:nugget_tin", "mdefault:nugget_tin", "mdefault:nugget_tin"},
        {"mdefault:nugget_tin", "mdefault:nugget_tin", "mdefault:nugget_tin"},
    },
})

minetest.register_craftitem("mdefault:dust_tin", {
	description = "Tin Dust",
	inventory_image = "mdefault_dust_tin.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_tin", {
	description = "Tin Coin",
	inventory_image = "mdefault_coin_tin.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_tin", {
	description = "Tin Plate",
	inventory_image = "mdefault_plate_tin.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_tin", {
	description = "Tin Gear",
	inventory_image = "mdefault_gear_tin.png",
	stack_max = 65535,
})