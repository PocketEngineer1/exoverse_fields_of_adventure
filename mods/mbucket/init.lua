mbucket = {}
local mod_path = minetest.get_modpath("mbucket")

minetest.register_craftitem("mbucket:sponge", {
    description = "Sponge",
    inventory_image = "mbucket_sponge.png",
    liquids_pointable = true,

    on_place = function(itemstack, placer, pointed_thing)
        local player_name = placer:get_player_name()

        local node_pos = pointed_thing.under
        local node = minetest.get_node(node_pos)

        if node.name == "mdefault:water_source" then
            minetest.set_node(node_pos, {name = "air"})
        elseif node.name == "mdefault:water_flowing" then
            minetest.set_node(node_pos, {name = "air"})
        elseif node.name == "mdefault:river_water_source" then
            minetest.set_node(node_pos, {name = "air"})
        elseif node.name == "mdefault:river_water_flowing" then
            minetest.set_node(node_pos, {name = "air"})
        end

        return itemstack
    end,
})

minetest.register_craftitem("mbucket:wet_sponge", {
    description = "Wet Sponge",
    inventory_image = "mbucket_wet_sponge.png",
    liquids_pointable = true,
    stack_max = 65535,
})

minetest.register_craftitem("mbucket:bucket", {
    description = "Bucket",
    inventory_image = "mbucket_bucket.png",
    liquids_pointable = true,
    stack_max = 1,

    on_place = function(itemstack, placer, pointed_thing)
        local player_name = placer:get_player_name()

        local node_pos = pointed_thing.under
        local node = minetest.get_node(node_pos)

        if node.name == "mdefault:water_source" then
            minetest.set_node(node_pos, {name = "air"})
            itemstack:set_name("mbucket:bucket_water")
            return itemstack
        elseif node.name == "mdefault:river_water_source" then
            minetest.set_node(node_pos, {name = "air"})
            itemstack:set_name("mbucket:bucket_river_water")
            return itemstack
        elseif node.name == "mdefault:lava_source" then
            minetest.set_node(node_pos, {name = "air"})
            itemstack:set_name("mbucket:bucket_lava")
            return itemstack
        end

        return itemstack
    end,
})

minetest.register_craftitem("mbucket:bucket_water", {
    description = "Bucket of Water",
    inventory_image = "mbucket_bucket_water.png",
    liquids_pointable = true,
    stack_max = 1,

    on_place = function(itemstack, placer, pointed_thing)
        local player_name = placer:get_player_name()

        local node_pos = pointed_thing.above
        local node = minetest.get_node(node_pos)

        if node.name == "air" then
            minetest.set_node(node_pos, {name = "mdefault:water_source"})
            itemstack:set_name("mbucket:bucket")
            return itemstack
        end

        return itemstack
    end,
})

minetest.register_craftitem("mbucket:bucket_river_water", {
    description = "Bucket of River Water",
    inventory_image = "mbucket_bucket_river_water.png",
    liquids_pointable = true,
    stack_max = 1,

    on_place = function(itemstack, placer, pointed_thing)
        local player_name = placer:get_player_name()

        local node_pos = pointed_thing.above
        local node = minetest.get_node(node_pos)

        if node.name == "air" then
            minetest.set_node(node_pos, {name = "mdefault:river_water_source"})
            itemstack:set_name("mbucket:bucket")
            return itemstack
        end

        return itemstack
    end,
})

minetest.register_craftitem("mbucket:bucket_lava", {
    description = "Bucket of Lava",
    inventory_image = "mbucket_bucket_lava.png",
    liquids_pointable = true,
    stack_max = 1,

    on_place = function(itemstack, placer, pointed_thing)
        local player_name = placer:get_player_name()

        local node_pos = pointed_thing.above
        local node = minetest.get_node(node_pos)

        if node.name == "air" then
            minetest.set_node(node_pos, {name = "mdefault:lava_source"})
            itemstack:set_name("mbucket:bucket")
            return itemstack
        end

        return itemstack
    end,
})