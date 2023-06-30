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
		else
			meta:set_int("growth_stage", growth_stage - 1)
		end
	else
        -- Fully grown, check if the soil is irrigated
        local soil_pos = {x = pos.x, y = pos.y - 1, z = pos.z}
        local soil_node = minetest.get_node(soil_pos)

        if minetest.get_item_group(soil_node.name, "farmable_soil") > 0 and minetest.get_item_group(soil_node.name, "irrigated_soil") > 0 then
            -- Change the irrigated soil node back to regular soil
            minetest.set_node(soil_pos, {name = "mfarming:farmable_soil"})
        end
	end
end

dofile(mod_path .. "/nodes.lua")
dofile(mod_path .. "/watering_can.lua")

dofile(mod_path .. "/crops/wheat.lua")
dofile(mod_path .. "/crops/eggplant.lua")