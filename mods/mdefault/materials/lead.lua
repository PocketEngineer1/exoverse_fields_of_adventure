minetest.register_node("mdefault:stone_with_lead", {
	description = "Stone with lead",
	tiles = {"mdefault_stone.png^mdefault_ore_lead.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_lead",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:bar_lead", {
	description = "lead Bar",
	inventory_image = "mdefault_bar_lead.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:lump_lead", {
	description = "lead Lump",
	inventory_image = "mdefault_lump_lead.png",
	stack_max = 65535,
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_lead",
	recipe = "mdefault:lump_lead",
})

minetest.register_craftitem("mdefault:piece_lead", {
	description = "lead Piece",
	inventory_image = "mdefault_piece_lead.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:chunk_lead", {
	description = "lead Chunk",
	inventory_image = "mdefault_chunk_lead.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:chunk_lead",
	recipe = {
        {"mdefault:piece_lead", "mdefault:piece_lead"},
        {"mdefault:piece_lead", "mdefault:piece_lead"},
    },
})

minetest.register_craft({
	type = "cooking",
	output = "mdefault:bar_lead",
	recipe = "mdefault:lump_lead",
})

minetest.register_craftitem("mdefault:nugget_lead", {
	description = "lead Nugget",
	inventory_image = "mdefault_nugget_lead.png",
	stack_max = 65535,
})

minetest.register_craft({
	output = "mdefault:nugget_lead 9",
	recipe = {
        {"mdefault:bar_lead"},
    },
})

minetest.register_craft({
	output = "mdefault:bar_lead",
	recipe = {
        {"mdefault:nugget_lead", "mdefault:nugget_lead", "mdefault:nugget_lead"},
        {"mdefault:nugget_lead", "mdefault:nugget_lead", "mdefault:nugget_lead"},
        {"mdefault:nugget_lead", "mdefault:nugget_lead", "mdefault:nugget_lead"},
    },
})

minetest.register_craftitem("mdefault:dust_lead", {
	description = "lead Dust",
	inventory_image = "mdefault_dust_lead.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:coin_lead", {
	description = "lead Coin",
	inventory_image = "mdefault_coin_lead.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:plate_lead", {
	description = "lead Plate",
	inventory_image = "mdefault_plate_lead.png",
	stack_max = 65535,
})

minetest.register_craftitem("mdefault:gear_lead", {
	description = "lead Gear",
	inventory_image = "mdefault_gear_lead.png",
	stack_max = 65535,
})