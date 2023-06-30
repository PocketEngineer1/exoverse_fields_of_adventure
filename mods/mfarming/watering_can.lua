-- Register the watering can item
minetest.register_tool("mfarming:watering_can", {
    description = "Watering Can",
    inventory_image = "mfarming_watering_can.png",
    liquids_pointable = true, -- Allow pointing at liquids for refilling

    -- Define the maximum number of uses for the watering can
    tool_capabilities = {
        full_punch_interval = 1,
        max_drop_level = 0,
        groupcaps = {
            snappy = {times = {[1] = 0.2}, uses = 10},
        },
        damage_groups = {fleshy = 1},
    },

    on_use = function(itemstack, user, pointed_thing)
        local player_name = user:get_player_name()

        -- Check if the watering can has water inside
        if itemstack:get_metadata() == "1" then
            if pointed_thing.type == "node" then
                local node_pos = pointed_thing.under

                -- Check if the pointed position is a farmable soil node
                local node_name = minetest.get_node(node_pos).name
                if node_name == "mfarming:farmable_soil" then
                    -- Convert regular soil to irrigated soil
                    local node_name_irrigated = "mfarming:farmable_soil_irrigated"
                    minetest.set_node(node_pos, {name = node_name_irrigated})

                    -- Decrease the uses of the watering can by 1
                    itemstack:add_wear(65535 / 10)

                    -- Check if the watering can is empty after use
                    if itemstack:get_wear() >= 65535 or itemstack:get_wear() == 0 then
                        itemstack:set_name("mfarming:empty_watering_can")
                        itemstack:set_wear(0)
                        itemstack:set_metadata("")
                        minetest.chat_send_player(player_name, "The watering can is empty.")
						return ItemStack("mfarming:empty_watering_can")
                    end

                    return itemstack
                end
            end
        end

        -- If not used on farmable soil or empty, return the watering can as is
        return itemstack
    end,
	
	after_use = function(itemstack, user, node, digparams)
		
		-- This adds the default wear amount.
		-- Source: lua_api.txt at line 5907 (Minetest v5.0.1)
		itemstack:add_wear(digparams.wear)
		
		-- If the tool isn't broken then return the updated item.
		if itemstack:get_wear() > 0 then
			--print(itemstack:get_wear())
			return itemstack
		
		-- If the tool is broken then replace it with something else.
		else
			--print(itemstack:get_wear())
			--Note: the above would return "0".
			local player_name = user:get_player_name()
			minetest.chat_send_player(player_name, "Your watering can is empty.")
			return ItemStack("mfarming:empty_watering_can")
		end
	end
})

-- Register the empty watering can item
minetest.register_craftitem("mfarming:empty_watering_can", {
    description = "Empty Watering Can",
    inventory_image = "mfarming_empty_watering_can.png",
    liquids_pointable = true, -- Allow pointing at liquids for refilling
    stack_max = 1,

    on_use = function(itemstack, placer, pointed_thing)
        local node = minetest.get_node(pointed_thing.under)
        local node_def = minetest.registered_nodes[node.name]

        if node_def and node_def.groups and node_def.groups.water then
            -- Replace the empty watering can with a filled watering can
            itemstack:set_name("mfarming:watering_can")
            itemstack:set_metadata("1")
            return itemstack
        end

        return itemstack
    end,
})