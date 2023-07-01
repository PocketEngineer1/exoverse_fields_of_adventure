minetest.register_craft({
    output = "mfarming:hoe",
    recipe = {
        {"mdefault:bar_iron", "mdefault:bar_iron"},
        {"", "mdefault:stick"},
        {"", "mdefault:stick"},
    },
})

minetest.register_craft({
    output = "mfarming:hoe",
    recipe = {
        {"mdefault:bar_iron", "mdefault:bar_iron"},
        {"mdefault:stick", ""},
        {"mdefault:stick", ""},
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