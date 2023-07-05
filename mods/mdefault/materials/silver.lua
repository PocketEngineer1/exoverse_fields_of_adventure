minetest.register_node("mdefault:stone_with_silver", {
	description = "Stone with Silver",
	tiles = {"mdefault_stone.png^mdefault_ore_silver.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_silver",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_silver", {
	description = "Silver Bar",
	inventory_image = "mdefault_bar_silver.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_silver", {
	description = "Silver Lump",
	inventory_image = "mdefault_lump_silver.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_silver",
	recipe = "mdefault:lump_silver",
})

minetest.register_craftitem("mdefault:piece_silver", {
	description = "Silver Piece",
	inventory_image = "mdefault_piece_silver.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_silver", {
	description = "Silver Chunk",
	inventory_image = "mdefault_chunk_silver.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_silver",
	recipe = {
        {"mdefault:piece_silver", "mdefault:piece_silver"},
        {"mdefault:piece_silver", "mdefault:piece_silver"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_silver",
	recipe = "mdefault:lump_silver",
})

minetest.register_craftitem("mdefault:nugget_silver", {
	description = "Silver Nugget",
	inventory_image = "mdefault_nugget_silver.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_silver 9",
	recipe = {
        {"mdefault:bar_silver"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_silver",
	recipe = {
        {"mdefault:nugget_silver", "mdefault:nugget_silver", "mdefault:nugget_silver"},
        {"mdefault:nugget_silver", "mdefault:nugget_silver", "mdefault:nugget_silver"},
        {"mdefault:nugget_silver", "mdefault:nugget_silver", "mdefault:nugget_silver"},
    },
})

minetest.register_craftitem("mdefault:dust_silver", {
	description = "Silver Dust",
	inventory_image = "mdefault_dust_silver.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_silver", {
	description = "Silver Coin",
	inventory_image = "mdefault_coin_silver.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_silver", {
	description = "Silver Plate",
	inventory_image = "mdefault_plate_silver.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_silver", {
	description = "Silver Gear",
	inventory_image = "mdefault_gear_silver.png",
	stack_max = 65535,
})