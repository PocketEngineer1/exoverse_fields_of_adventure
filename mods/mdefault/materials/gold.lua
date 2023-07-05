minetest.register_node("mdefault:stone_with_gold", {
	description = "Stone with Gold",
	tiles = {"mdefault_stone.png^mdefault_ore_gold.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_gold",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_gold", {
	description = "Gold Bar",
	inventory_image = "mdefault_bar_gold.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_gold", {
	description = "Gold Lump",
	inventory_image = "mdefault_lump_gold.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_gold",
	recipe = "mdefault:lump_gold",
})

minetest.register_craftitem("mdefault:piece_gold", {
	description = "Gold Piece",
	inventory_image = "mdefault_piece_gold.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_gold", {
	description = "Gold Chunk",
	inventory_image = "mdefault_chunk_gold.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_gold",
	recipe = {
        {"mdefault:piece_gold", "mdefault:piece_gold"},
        {"mdefault:piece_gold", "mdefault:piece_gold"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_gold",
	recipe = "mdefault:lump_gold",
})

minetest.register_craftitem("mdefault:nugget_gold", {
	description = "Gold Nugget",
	inventory_image = "mdefault_nugget_gold.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_gold 9",
	recipe = {
        {"mdefault:bar_gold"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_gold",
	recipe = {
        {"mdefault:nugget_gold", "mdefault:nugget_gold", "mdefault:nugget_gold"},
        {"mdefault:nugget_gold", "mdefault:nugget_gold", "mdefault:nugget_gold"},
        {"mdefault:nugget_gold", "mdefault:nugget_gold", "mdefault:nugget_gold"},
    },
})

minetest.register_craftitem("mdefault:dust_gold", {
	description = "Gold Dust",
	inventory_image = "mdefault_dust_gold.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_gold", {
	description = "Gold Coin",
	inventory_image = "mdefault_coin_gold.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_gold", {
	description = "Gold Plate",
	inventory_image = "mdefault_plate_gold.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_gold", {
	description = "Gold Gear",
	inventory_image = "mdefault_gear_gold.png",
	stack_max = 65535,
})