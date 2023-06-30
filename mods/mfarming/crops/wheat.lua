-- Define the growth time for each stage (in seconds)
local growth_times = {
    [1] = {min = 1, max = 1},
    [2] = {min = 1, max = 1},
    [3] = {min = 1, max = 1},
    [4] = {min = 1, max = 1},
    [5] = {min = 1, max = 1},
    [6] = {min = 1, max = 1},
    [7] = {min = 1, max = 1},
    [8] = {min = 1, max = 1},
}

-- Register the crop nodes and its behavior
minetest.register_node("mfarming:wheat_1", {
	description = "Wheat\nGrowth Stage 1",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_2", {
	description = "Wheat\nGrowth Stage 2",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_2.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
	stack_max = 65535,

    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_int("growth_stage", 2)
        local timer = minetest.get_node_timer(pos)
        timer:start(math.random(growth_times[2].min, growth_times[2].max)) -- Start the growth timer for the initial growth stage
    end,

    -- Add callback for when the crop node is placed
    on_timer = function(pos, elapsed)
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_3", {
	description = "Wheat\nGrowth Stage 3",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_3.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_4", {
	description = "Wheat\nGrowth Stage 4",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_4.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_5", {
	description = "Wheat\nGrowth Stage 5",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_5.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_6", {
	description = "Wheat\nGrowth Stage 6",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_6.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_7", {
	description = "Wheat\nGrowth Stage 7",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_7.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:seed_wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wheat_8", {
	description = "Wheat\nGrowth Stage 8",
	drawtype = "plantlike",
	tiles = {"mfarming_wheat_8.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
    drop = "mfarming:wheat",
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
        mfarming.growth_timer(pos, "wheat", growth_times)
    end,
})

minetest.register_node("mfarming:wild_wheat", {
	description = "Wild Wheat",
	drawtype = "plantlike",
	tiles = {"mfarming_wild_wheat.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, plant = 1},
	stack_max = 65535,
})

minetest.register_craftitem("mfarming:wheat", {
    description = "Wheat",
    inventory_image = "mfarming_wheat.png",
	stack_max = 65535,
})

minetest.register_craftitem("mfarming:seed_wheat", {
	description = "Wheat Seed",
	inventory_image = "mfarming_seed_wheat.png",
	stack_max = 65535,

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local above_pos = pointed_thing.above
			local under_pos = vector.new(above_pos.x, above_pos.y - 1, above_pos.z)

			-- Check if the pointed position is a valid place for the wheat to grow
			if placer and placer:is_player() and
				minetest.get_item_group(minetest.get_node(under_pos).name, "soil") > 0 and
				minetest.get_item_group(minetest.get_node(under_pos).name, "farmable_soil") > 0 and
				minetest.get_node(above_pos).name == "air" then

				-- Place the first growth stage node on top of the soil node
				local node_name = "mfarming:wheat_1"
				minetest.set_node(above_pos, { name = node_name })

				-- Decrement the seed item count in the player's inventory
				if not minetest.is_creative_enabled(placer:get_player_name()) then
					itemstack:take_item()
				end

				return itemstack
			end
		end
	end,
})

minetest.register_craft({
    output = "mfarming:seed_wheat 2",
    recipe = {
        {"mfarming:wheat"},
    },
})

minetest.register_craft({
    output = "mfarming:seed_wheat",
    recipe = {
        {"mfarming:wild_wheat"},
    },
})