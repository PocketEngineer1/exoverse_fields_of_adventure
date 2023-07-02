mdigigadgets = {}
local mod_path = minetest.get_modpath("mdigigadgets")

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
                
				"listring[]"
            )
	end,
})

-- dofile(mod_path .. "/template.lua")