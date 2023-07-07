minetest.register_node("out_of_nothing:crucible", {
    description = "Crucible",
    tiles = {"out_of_nothing_crucible.png"},
    groups = {cracky = 3},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
        meta:set_string("output", "")
    end,
    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
        local meta = minetest.get_meta(pos)
        local inventory = player:get_inventory()
        local player_name = player:get_player_name()

        -- If the player is holding an item, perform the melting logic
        if meta:get_string("output") == "" then
            if itemstack:get_name() == "mdefault:cobble" then
                itemstack:take_item()
                meta:set_string("output", "liquid_lava")
            end
        elseif meta:get_string("output") == "liquid_lava" then
            if itemstack:get_name() == "mbucket:bucket" then
                itemstack:replace("mbucket:bucket_lava")
                meta:set_string("output", "")
            else
                minetest.chat_send_player(player_name, "There's lava in the crucible")
            end
        end
    end,
})
