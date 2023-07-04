minetest.register_craft({
    output = "mfarming:hoe",
    recipe = {
        {"mdefault:bar_iron", "mdefault:bar_iron"},
        {"", "group:stick"},
        {"", "group:stick"},
    },
})

minetest.register_craft({
    output = "mfarming:hoe",
    recipe = {
        {"mdefault:bar_iron", "mdefault:bar_iron"},
        {"group:stick", ""},
        {"group:stick", ""},
    },
})

minetest.register_craft({
    output = "mfarming:empty_watering_can",
    recipe = {
        {"", "", "mdefault:bar_iron"},
        {"mdefault:bar_iron", "mbucket:bucket", "mdefault:bar_iron"},
        {"", "mdefault:bar_iron", ""},
    },
})

minetest.register_craft({
    output = "mfarming:watering_can",
    recipe = {
        {"", "", "mdefault:bar_iron"},
        {"mdefault:bar_iron", "mbucket:bucket_water", "mdefault:bar_iron"},
        {"", "mdefault:bar_iron", ""},
    },
})

minetest.register_craft({
    output = "mdefault:dirt_with_grass",
    recipe = {
        {"mfarming:seed_grass"},
        {"mdefault:dirt"},
    },
})