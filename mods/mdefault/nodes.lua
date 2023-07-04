local WATER_ALPHA = "^[opacity:" .. 160
local WATER_VISC = 1
local LAVA_VISC = 7

minetest.register_node("mdefault:stone", {
	description = "Stone",
	tiles = {"mdefault_stone.png"},
	groups = {cracky=3, stone=1},
	drop = "mdefault:cobble",
	stack_max = 65535,
})

minetest.register_node("mdefault:desert_stone", {
	description = "Desert Stone",
	tiles = {"mdefault_desert_stone.png"},
	groups = {cracky=3, stone=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles ={"mdefault_grass.png",
		"mdefault_dirt.png",
		{name = "mdefault_dirt.png^mdefault_grass_side.png",
		tileable_vertical = false}},
	groups = {crumbly=3, soil=1},
	stack_max = 65535,
	drop = "mdefault:dirt",
})

minetest.register_node("mdefault:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles ={"mdefault_dirt_with_snow.png",
		"mdefault_dirt.png",
		{name = "mdefault_dirt.png^mdefault_snow_side.png",
		tileable_vertical = false}},
	groups = {crumbly=3, soil=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:dirt", {
	description = "Dirt",
	tiles ={"mdefault_dirt.png"},
	groups = {crumbly=3, soil=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:dust", {
	description = "Dust",
	tiles ={"mdefault_dust.png"},
	groups = {crumbly=3, dust=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:sand", {
	description = "Sand",
	tiles ={"mdefault_sand.png"},
	groups = {crumbly=3, sand=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:desert_sand", {
	description = "Desert Sand",
	tiles ={"mdefault_desert_sand.png"},
	groups = {crumbly=3, sand=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:gravel", {
	description = "Gravel",
	tiles ={"mdefault_gravel.png"},
	groups = {crumbly=2, gravel=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	tiles ={"mdefault_junglegrass.png"},
	inventory_image = "mdefault_junglegrass.png",
	wield_image = "mdefault_junglegrass.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=3},
	stack_max = 65535,
})

minetest.register_node("mdefault:tree", {
	description = "Normal Tree Trunk",
	tiles = {"mdefault_tree_top.png", "mdefault_tree_top.png", "mdefault_tree.png"},
	is_ground_content = false,
	groups = {choppy=2, oddly_breakable_by_hand=1, tree=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:leaves", {
	description = "Normal Leaves",
	drawtype = "allfaces_optional",
	tiles = {"mdefault_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leaves=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:glass", {
	description = "Glass",
	drawtype = "glasslike",
	tiles = {"mdefault_glass.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky=3, oddly_breakable_by_hand=1, glass=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:jungletree", {
	description = "Jungle Tree Trunk",
	tiles = {"mdefault_jungletree_top.png", "mdefault_jungletree_top.png", "mdefault_jungletree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:jungleleaves", {
	description = "Jungle Leaves",
	drawtype = "allfaces_optional",
	tiles = {"mdefault_jungleleaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3},
	stack_max = 65535,
})

minetest.register_node("mdefault:pine_tree", {
	description = "Pine Tree Trunk",
	tiles = {"mdefault_pine_tree_top.png", "mdefault_pine_tree_top.png", "mdefault_pine_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:pine_needles", {
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"mdefault_pine_needles.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3},
	stack_max = 65535,
})

minetest.register_node("mdefault:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {"mdefault_water.png"..WATER_ALPHA},
	special_tiles = {
		{name = "mdefault_water.png"..WATER_ALPHA, backface_culling = false},
		{name = "mdefault_water.png"..WATER_ALPHA, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mdefault:water_flowing",
	liquid_alternative_source = "mdefault:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
	stack_max = 65535,
})

minetest.register_node("mdefault:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"mdefault_water_flowing.png"},
	special_tiles = {
		{name = "mdefault_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
		{name = "mdefault_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mdefault:water_flowing",
	liquid_alternative_source = "mdefault:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
	stack_max = 65535,
})

minetest.register_node("mdefault:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = { "mdefault_river_water.png"..WATER_ALPHA },
	special_tiles = {
		{name = "mdefault_river_water.png"..WATER_ALPHA, backface_culling = false},
		{name = "mdefault_river_water.png"..WATER_ALPHA, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mdefault:river_water_flowing",
	liquid_alternative_source = "mdefault:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, },
	stack_max = 65535,
})

minetest.register_node("mdefault:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"mdefault_river_water_flowing.png"..WATER_ALPHA},
	special_tiles = {
		{name = "mdefault_river_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
		{name = "mdefault_river_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mdefault:river_water_flowing",
	liquid_alternative_source = "mdefault:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, },
	stack_max = 65535,
})

minetest.register_node("mdefault:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"mdefault_lava_flowing.png"},
	special_tiles = {
		{name="mdefault_lava_flowing.png", backface_culling = false},
		{name="mdefault_lava_flowing.png", backface_culling = false},
	},
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	damage_per_second = 4,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mdefault:lava_flowing",
	liquid_alternative_source = "mdefault:lava_source",
	liquid_viscosity = LAVA_VISC,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = { "mdefault_lava.png" },
	special_tiles = {
		{name = "mdefault_lava.png", backface_culling = false},
		{name = "mdefault_lava.png", backface_culling = true},
	},
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	damage_per_second = 4,
	liquidtype = "source",
	liquid_alternative_flowing = "mdefault:lava_flowing",
	liquid_alternative_source = "mdefault:lava_source",
	liquid_viscosity = LAVA_VISC,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:cobble", {
	description = "Cobblestone",
	tiles ={"mdefault_cobble.png"},
	is_ground_content = false,
	groups = {cracky=3, stone=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:mossycobble", {
	description = "Mossy Cobblestone",
	tiles ={"mdefault_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky=3, stone=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:apple", {
	description = "Apple".."\n"..
		"Food (+2)",
	drawtype = "plantlike",
	tiles ={"mdefault_apple.png"},
	inventory_image = "mdefault_apple.png",
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	walkable = false,
	groups = {dig_immediate=3},
	on_use = minetest.item_eat(2),
	stack_max = 65535,
})

minetest.register_node("mdefault:ice", {
	description = "Ice",
	tiles ={"mdefault_ice.png"},
	groups = {cracky=3, ice=1},
	stack_max = 65535,
})

minetest.register_node("mdefault:wood", {
	description = "Normal Wood",
	tiles = {"mdefault_wood.png"},
	is_ground_content = false,
	groups = {choppy=3, oddly_breakable_by_hand=1, wood=1},
	stack_max = 65535,
})

-- The snow nodes intentionally have different tints to make them more
-- distinguishable
minetest.register_node("mdefault:snow", {
	description = "Snow Sheet",
	tiles = {"mdefault_snow_sheet.png"},
	groups = {crumbly=3},
	walkable = false,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
	},
	stack_max = 65535,
})

minetest.register_node("mdefault:snowblock", {
	description = "Snow Block",
	tiles ={"mdefault_snow.png"},
	groups = {crumbly=3},
	stack_max = 65535,
})

minetest.register_node("mdefault:stone_with_iron", {
	description = "Stone with Iron",
	tiles = {"mdefault_stone.png^mdefault_ore_iron.png"},
	groups = {cracky=3},
	drop = "mdefault:lump_iron",
	stack_max = 65535,
})

minetest.register_node("mdefault:desert_stone_with_iron", {
	description = "Desert Stone",
	tiles = {"mdefault_desert_stone.png^mdefault_ore_iron.png"},
	groups = {cracky=3},
	stack_max = 65535,
	drop = "mdefault:lump_iron",
})