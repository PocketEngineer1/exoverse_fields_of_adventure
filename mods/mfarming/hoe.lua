minetest.register_tool("mfarming:hoe", {
	description = "Hoe",
	inventory_image = "mfarming_hoe.png",
	on_use = function(itemstack, user, pointed_thing)
		local player_name = user:get_player_name()
		
		if pointed_thing.type == "node" then
			local node_pos = pointed_thing.under
			local above_pos = {x = node_pos.x, y = node_pos.y + 1, z = node_pos.z}
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