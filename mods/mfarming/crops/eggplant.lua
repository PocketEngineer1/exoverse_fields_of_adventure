-- Define the growth time for each stage (in seconds)
local growth_times = {
    [1] = {min = 300, max = 600},
    [2] = {min = 300, max = 600},
    [3] = {min = 300, max = 600},
    [4] = {min = 300, max = 600},
    [5] = {min = 300, max = 600},
    [6] = {min = 300, max = 600},
    [7] = {min = 300, max = 600},
    [8] = {min = 300, max = 600},
}

-- Register the crop nodes and its behavior
minetest.register_node("mfarming:eggplant_1", {
	description = "Eggplant\nGrowth Stage 1",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 1)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[1].min, growth_times[1].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_2", {
	description = "Eggplant\nGrowth Stage 2",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_2.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 2)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[2].min, growth_times[2].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the crop node is placed
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_3", {
	description = "Eggplant\nGrowth Stage 3",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_3.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 3)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[3].min, growth_times[3].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_4", {
	description = "Eggplant\nGrowth Stage 4",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_4.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 4)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[4].min, growth_times[4].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_5", {
	description = "Eggplant\nGrowth Stage 5",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_5.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 5)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[5].min, growth_times[5].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_6", {
	description = "Eggplant\nGrowth Stage 6",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_6.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 6)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[6].min, growth_times[6].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_7", {
	description = "Eggplant\nGrowth Stage 7",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_7.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:seed_eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 7)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[7].min, growth_times[7].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,
})

minetest.register_node("mfarming:eggplant_8", {
	description = "Eggplant\nGrowth Stage 8",
	drawtype = "plantlike",
	tiles = {"mfarming_eggplant_8.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory=1},
    drop = "mfarming:eggplant",
	stack_max = 65535,

    -- Add callback for when the crop node is placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 8)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[8].min, growth_times[8].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the growth timer completes
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "eggplant", growth_times)
    end,

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
        if itemstack:is_empty() then
            player:get_inventory():add_item("main", "mfarming:eggplant")
            minetest.set_node(pos, {name = "mfarming:eggplant_7"})
        end
    end,
})

minetest.register_node("mfarming:wild_eggplant", {
	description = "Wild Eggplant",
	drawtype = "plantlike",
	tiles = {"mfarming_wild_eggplant.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
	stack_max = 65535,
})

minetest.register_craftitem("mfarming:eggplant", {
    description = "Eggplant",
    inventory_image = "mfarming_eggplant.png",
    on_use = minetest.item_eat(1),
	stack_max = 65535,
})

minetest.register_craftitem("mfarming:seed_eggplant", {
	description = "Eggplant Seed",
	inventory_image = "mfarming_seed_eggplant.png",
	stack_max = 65535,

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local above_pos = pointed_thing.above
			local under_pos = vector.new(above_pos.x, above_pos.y - 1, above_pos.z)

			-- Check if the pointed position is a valid place for the eggplant to grow
			if placer and placer:is_player() and
				minetest.get_item_group(minetest.get_node(under_pos).name, "soil") > 0 and
				minetest.get_item_group(minetest.get_node(under_pos).name, "farmable_soil") > 0 and
				minetest.get_node(above_pos).name == "air" then

				-- Place the first growth stage node on top of the soil node
				local node_name = "mfarming:eggplant_1"
				minetest.set_node(above_pos, { name = node_name })

				-- Decrement the seed item count in the player's inventory
				if not minetest.is_creative_enabled(placer:get_player_name()) then
					itemstack:take_item()
				end
            elseif minetest.get_node(under_pos).name == "mdefault:dirt_with_grass" and
                minetest.get_node(above_pos).name == "air" then

                -- Place the first growth stage node on top of the soil node
                local node_name = "mfarming:wild_eggplant"
                minetest.set_node(above_pos, { name = node_name })

                -- Decrement the seed item count in the player's inventory
                if not minetest.is_creative_enabled(placer:get_player_name()) then
                    itemstack:take_item()
                end
			end
            return itemstack
		end
	end,
})

minetest.register_craft({
    output = "mfarming:seed_eggplant 2",
    recipe = {
        {"mfarming:eggplant"},
    },
})

minetest.register_craft({
    output = "mfarming:seed_eggplant",
    recipe = {
        {"mfarming:wild_eggplant"},
    },
})