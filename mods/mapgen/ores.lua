-- Scatter

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mdefault:stone_with_iron",
    wherein        = "mdefault:stone",
    clust_scarcity = (9 * 9 * 9) * 4,
    clust_num_ores = 12,
    clust_size     = 3,
    y_max          = 0,
    y_min          = -31000,
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mdefault:stone_with_coal",
    wherein        = "mdefault:stone",
    clust_scarcity = (9 * 9 * 9) * 2,
    clust_num_ores = 24,
    clust_size     = 3,
    y_max          = 31000,
    y_min          = -31000,
})

-- Blob

minetest.register_ore({
    ore_type        = "blob",
    ore             = "mdefault:gravel",
    wherein         = {"mdefault:stone"},
    clust_scarcity  = 16 * 16 * 16,
    clust_size      = 5,
    y_max           = 31000,
    y_min           = -31000,
    noise_threshold = 0.0,
    noise_params    = {
        offset = 0.5,
        scale = 0.2,
        spread = {x = 5, y = 5, z = 5},
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
})

minetest.register_ore({
    ore_type        = "blob",
    ore             = "mdefault:ice",
    wherein         = {"mdefault:stone"},
    clust_scarcity  = 32 * 32 * 32,
    clust_size      = 5,
    y_max           = 31000,
    y_min           = -31000,
    noise_threshold = 0.0,
    noise_params    = {
        offset = 0.5,
        scale = 0.2,
        spread = {x = 5, y = 5, z = 5},
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
})

minetest.register_ore({
    ore_type        = "blob",
    ore             = "mdefault:dirt",
    wherein         = {"mdefault:stone"},
    clust_scarcity  = 32 * 32 * 32,
    clust_size      = 5,
    y_max           = 31000,
    y_min           = -31000,
    noise_threshold = 0.0,
    noise_params    = {
        offset = 0.5,
        scale = 0.2,
        spread = {x = 5, y = 5, z = 5},
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
})

minetest.register_ore({
    ore_type        = "blob",
    ore             = "mdefault:sand",
    wherein         = {"mdefault:stone"},
    clust_scarcity  = 32 * 32 * 32,
    clust_size      = 5,
    y_max           = 31000,
    y_min           = -31000,
    noise_threshold = 0.0,
    noise_params    = {
        offset = 0.5,
        scale = 0.2,
        spread = {x = 5, y = 5, z = 5},
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
})