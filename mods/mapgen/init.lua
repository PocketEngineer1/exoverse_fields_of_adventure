--
-- Aliases for map generator outputs
--

-- ESSENTIAL node aliases
-- Basic nodes
minetest.register_alias("mapgen_stone", "mdefault:stone")
minetest.register_alias("mapgen_water_source", "mdefault:water_source")
minetest.register_alias("mapgen_river_water_source", "mdefault:river_water_source")

-- Additional essential aliases for v6
minetest.register_alias("mapgen_lava_source", "mdefault:lava_source")
minetest.register_alias("mapgen_dirt", "mdefault:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "mdefault:dirt_with_grass")
minetest.register_alias("mapgen_sand", "mdefault:sand")
minetest.register_alias("mapgen_tree", "mdefault:tree")
minetest.register_alias("mapgen_leaves", "mdefault:leaves")
minetest.register_alias("mapgen_apple", "mdefault:apple")

-- Essential alias for dungeons
minetest.register_alias("mapgen_cobble", "mdefault:cobble")

-- Optional aliases for v6 (they all have fallback values in the engine)
minetest.register_alias("mapgen_gravel", "mdefault:gravel")
minetest.register_alias("mapgen_desert_stone", "mdefault:desert_stone")
minetest.register_alias("mapgen_desert_sand", "mdefault:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "mdefault:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "mdefault:snowblock")
minetest.register_alias("mapgen_snow", "mdefault:snow")
minetest.register_alias("mapgen_ice", "mdefault:ice")
minetest.register_alias("mapgen_junglegrass", "mdefault:junglegrass")
minetest.register_alias("mapgen_jungletree", "mdefault:jungletree")
minetest.register_alias("mapgen_jungleleaves", "mdefault:jungleleaves")
minetest.register_alias("mapgen_pine_tree", "mdefault:pine_tree")
minetest.register_alias("mapgen_pine_needles", "mdefault:pine_needles")

-- Optional alias for mossycobble (should fall back to cobble)
minetest.register_alias("mapgen_mossycobble", "mdefault:mossycobble")
-- Optional aliases for dungeon stairs (should fall back to full nodes)
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_desert_stone")

--
-- Register biomes for biome API
--

minetest.register_biome({
	name = "mapgen:grassland",
	node_top = "mdefault:dirt_with_grass",
	depth_top = 1,
	node_filler = "mdefault:dirt",
	depth_filler = 1,
	node_riverbed = "mdefault:sand",
	depth_riverbed = 2,
	node_dungeon = "mdefault:cobble",
	node_dungeon_alt = "mdefault:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 31000,
	y_min = 4,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_biome({
	name = "mapgen:grassland_ocean",
	node_top = "mdefault:sand",
	depth_top = 1,
	node_filler = "mdefault:sand",
	depth_filler = 3,
	node_riverbed = "mdefault:sand",
	depth_riverbed = 2,
	node_cave_liquid = "mdefault:water_source",
	node_dungeon = "mdefault:cobble",
	node_dungeon_alt = "mdefault:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 3,
	y_min = -255,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_biome({
	name = "mapgen:grassland_under",
	node_cave_liquid = {"mdefault:water_source", "mdefault:lava_source"},
	node_dungeon = "mdefault:cobble",
	node_dungeon_alt = "mdefault:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = -256,
	y_min = -31000,
	heat_point = 50,
	humidity_point = 50,
})

-- Trees
minetest.register_decoration({
    name = "mapgen:normal_tree",
    deco_type = "schematic",
    place_on = {"mdefault:dirt_with_grass"}, -- Where the decoration can be placed
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.004,
        spread = {x = 100, y = 100, z = 100},
        seed = 1,
        octaves = 3,
        persist = 0.6
    },
    biomes = {"mapgen:grassland"}, -- Biomes where the decoration can appear
    y_min = 1,
    y_max = 31000,
    schematic = "schematics/normal_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

-- Wild Crops
minetest.register_decoration({
    deco_type = "simple",
    place_on = {"mdefault:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = {x = 200, y = 200, z = 200},
        seed = 42,
        octaves = 3,
        persist = 0.6
    },
    biomes = {"mapgen:grassland"},
    decoration = "mfarming:wild_wheat",
    height = 1,
    height_max = 1,
    param2 = 0,
    flags = "place_center_x, place_center_z",
    spawn_by = "mdefault:dirt_with_grass",
    num_spawn_by = 1,
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"mdefault:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = {x = 200, y = 200, z = 200},
        seed = 42,
        octaves = 3,
        persist = 0.6
    },
    biomes = {"mapgen:grassland"},
    decoration = "mfarming:wild_eggplant",
    height = 1,
    height_max = 1,
    param2 = 0,
    flags = "place_center_x, place_center_z",
    spawn_by = "mdefault:dirt_with_grass",
    num_spawn_by = 1,
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"mdefault:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = {x = 200, y = 200, z = 200},
        seed = 42,
        octaves = 3,
        persist = 0.6
    },
    biomes = {"mapgen:grassland"},
    decoration = "mfarming:wild_grass",
    height = 1,
    height_max = 1,
    param2 = 0,
    flags = "place_center_x, place_center_z",
    spawn_by = "mdefault:dirt_with_grass",
    num_spawn_by = 1,
})

mapgen = {}
local mod_path = minetest.get_modpath("mapgen")

local function placeSchematic(pos, schematic_path)
    local rotation = math.random(0, 3) -- Random rotation (0, 1, 2, or 3)

    local rotation_str = tostring(rotation * 90) -- Convert rotation to degrees

    minetest.place_schematic(pos, schematic_path, rotation_str, nil, false)
end

-- dofile(mod_path .. '/saplings/normal_tree.lua')