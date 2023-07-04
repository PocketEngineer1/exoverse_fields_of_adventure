-- Register the crucible node
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
        if not itemstack:is_empty() then
            if meta:get_string("output") == "" then
                if itemstack:get_name() == "mdefault:cobble" then
                    itemstack:take_item()
                    meta:set_string("output", "liquid_lava")
                end
            elseif meta:get_string("output") == "liquid_lava" then
                if itemstack:get_name() == "mbucket:bucket" then
                    meta:set_string("output", "")
                    itemstack:take_item()
                    inventory:add_item("main", {name = "mbucket:bucket_lava"})
                else
                    minetest.chat_send_player(player_name, "There's lava in the crucible")
                end
            end
        elseif meta:get_string("output") == "liquid_lava" then
            minetest.chat_send_player(player_name, "There's lava in the crucible")
        else
            minetest.chat_send_player(player_name, "There's something in the crucible")
        end
        -- inventory:add_item("main", "mdefault:dust")
    end,
})
