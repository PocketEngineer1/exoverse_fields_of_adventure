mdigigadgets = {}
local mod_path = minetest.get_modpath("mdigigadgets")

minetest.register_craftitem("mdigigadgets:motherboard", {
	description = "Motherboard",
	inventory_image = "mdigigadgets_motherboard.png",
	stack_max = 1,
    groups = {motherboard=1, memory_slots=4}
})

function mdigigadgets(motherboard)
end

minetest.register_node("mdigigadgets:computer_case", {
	description = "Computer Case",
    tiles ={"mdigigadgets_computer_case.png^[sheet:2x2:0,0", "mdigigadgets_computer_case.png^[sheet:2x2:0,0",
    "mdigigadgets_computer_case.png^[sheet:2x2:1,0", "mdigigadgets_computer_case.png^[sheet:2x2:1,0",
    "mdigigadgets_computer_case.png^[sheet:2x2:1,0", "mdigigadgets_computer_case.png^[sheet:2x2:0,1"},
	paramtype2 = "facedir",
	groups = {dig_immediate=3},
	is_ground_content = false,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[9,11]"..
				"list[current_name;motherboard;0,0;1,1;]"..
				"list[current_player;main;0,7.2;9,4;]"..
				"listring[]"
            )
        local inv = meta:get_inventory()
        inv:set_size("motherboard", 1)
    end,
    can_dig = function(pos,player)
        local meta = minetest.get_meta(pos);
        local inv = meta:get_inventory()
        return inv:is_empty("motherboard")
    end,
})

-- dofile(mod_path .. "/template.lua")