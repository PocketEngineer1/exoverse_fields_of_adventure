minetest.register_node("mdefault:stone_with_iron", {
	description = "Stone with Iron",
	tiles = {"mdefault_stone.png^mdefault_ore_iron.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_iron",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_iron", {
	description = "Iron Bar",
	inventory_image = "mdefault_bar_iron.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_iron", {
	description = "Iron Lump",
	inventory_image = "mdefault_lump_iron.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_iron",
	recipe = "mdefault:lump_iron",
})

minetest.register_craftitem("mdefault:piece_iron", {
	description = "Iron Piece",
	inventory_image = "mdefault_piece_iron.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_iron", {
	description = "Iron Chunk",
	inventory_image = "mdefault_chunk_iron.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_iron",
	recipe = {
        {"mdefault:piece_iron", "mdefault:piece_iron"},
        {"mdefault:piece_iron", "mdefault:piece_iron"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_iron",
	recipe = "mdefault:chunk_iron",
})

minetest.register_craftitem("mdefault:nugget_iron", {
	description = "Iron Nugget",
	inventory_image = "mdefault_nugget_iron.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_iron 9",
	recipe = {
        {"mdefault:bar_iron"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_iron",
	recipe = {
        {"mdefault:nugget_iron", "mdefault:nugget_iron", "mdefault:nugget_iron"},
        {"mdefault:nugget_iron", "mdefault:nugget_iron", "mdefault:nugget_iron"},
        {"mdefault:nugget_iron", "mdefault:nugget_iron", "mdefault:nugget_iron"},
    },
})

minetest.register_craftitem("mdefault:dust_iron", {
	description = "Iron Dust",
	inventory_image = "mdefault_dust_iron.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_iron", {
	description = "Iron Coin",
	inventory_image = "mdefault_coin_iron.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_iron", {
	description = "Iron Plate",
	inventory_image = "mdefault_plate_iron.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_iron", {
	description = "Iron Gear",
	inventory_image = "mdefault_gear_iron.png",
	stack_max = 65535,
})