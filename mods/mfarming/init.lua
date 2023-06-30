mfarming = {}
local mod_path = minetest.get_modpath("mfarming")

function mfarming.growth_timer(pos, crop, growth_time_ranges)
	-- Get the metadata of the crop node at the given position
	local meta = minetest.get_meta(pos)
	local growth_stage = meta:get_int("growth_stage")

	-- Increment the growth stage if not yet fully grown
	if growth_stage < #growth_time_ranges then
		growth_stage = growth_stage + 1
		meta:set_int("growth_stage", growth_stage)

		-- Calculate the random growth time within the specified range for the current stage
		local growth_time_range = growth_time_ranges[growth_stage]
		local next_growth_time = math.random(growth_time_range.min, growth_time_range.max)
		minetest.get_node_timer(pos):start(next_growth_time)

		local soil_pos = {x = pos.x, y = pos.y - 1, z = pos.z}
		local soil_node = minetest.get_node(soil_pos)

		-- Check if the soil irrigated
		if minetest.get_item_group(soil_node.name, "farmable_soil") > 0 and minetest.get_item_group(soil_node.name, "irrigated_soil") > 0 then
			-- Change the node to the next growth stage
			local node_name = "mfarming:" .. crop .. "_" .. growth_stage
			minetest.swap_node(pos, {name = node_name})
			minetest.set_node(soil_pos, {name = "mfarming:farmable_soil"})
		else
			meta:set_int("growth_stage", growth_stage - 1)
		end
	end
end

-- Hoe, might move it to a different file
minetest.register_tool("mfarming:hoe", {
	description = "Hoe",
	inventory_image = "mfarming_hoe.png",
	on_use = function(itemstack, user, pointed_thing)
		local player_name = user:get_player_name()
		
		local above_pos = pointed_thing.above
		if pointed_thing.type == "node" then
			local node_pos = pointed_thing.under
			local node_name = minetest.get_node(node_pos).name

			if node_name == "mdefault:dirt" and minetest.get_node(above_pos).name == "air" then
				local node_name_farmable = "mfarming:farmable_soil"
				minetest.set_node(node_pos, {name = node_name_farmable})
				itemstack:add_wear(65535 / 100)
				return itemstack

			elseif node_name == "mdefault:dirt_with_grass" and minetest.get_node(above_pos).name == "air" then
				local node_name_farmable = "mdefault:dirt"
				minetest.set_node(node_pos, {name = node_name_farmable})
				itemstack:add_wear(65535 / 100)
				return itemstack
			end
		end
        return itemstack
	end,
})

dofile(mod_path .. "/nodes.lua")
dofile(mod_path .. "/watering_can.lua")

dofile(mod_path .. "/crops/wheat.lua")
dofile(mod_path .. "/crops/eggplant.lua")
dofile(mod_path .. "/crops/grass.lua")