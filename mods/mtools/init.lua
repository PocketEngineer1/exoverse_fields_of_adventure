if minetest.settings:get_bool("creative_mode") then
	local digtime = 42
	local caps = {times = {digtime, digtime, digtime}, uses = 0, maxlevel = 256}

	minetest.register_item(":", {
		type = "none",
		wield_image = "wieldhand.png",
		wield_scale = {x = 1, y = 1, z = 2.5},
		range = 10,
		tool_capabilities = {
			full_punch_interval = 0.5,
			max_drop_level = 3,
			groupcaps = {
				crumbly = caps,
				cracky  = caps,
				snappy  = caps,
				choppy  = caps,
				oddly_breakable_by_hand = caps,
				-- dig_immediate group doesn't use value 1. Value 3 is instant dig
				dig_immediate =
					{times = {[2] = digtime, [3] = 0}, uses = 0, maxlevel = 256},
			},
			damage_groups = {fleshy = 10},
		}
	})
else
	minetest.register_item(":", {
		type = "none",
		wield_image = "wieldhand.png",
		wield_scale = {x = 1, y = 1, z = 2.5},
		tool_capabilities = {
			full_punch_interval = 0.9,
			max_drop_level = 0,
			groupcaps = {
				crumbly = {times = {[2] = 3.00, [3] = 0.70}, uses = 0, maxlevel = 1},
				snappy = {times = {[3] = 0.40}, uses = 0, maxlevel = 1},
				oddly_breakable_by_hand =
					{times = {[1] = 3.50, [2] = 2.00, [3] = 0.70}, uses = 0}
			},
			damage_groups = {fleshy = 1},
		}
	})
end

-- Mese Pickaxe: special tool that digs "everything" instantly
minetest.register_tool("tools:pick_mese", {
	description = "Mese Pickaxe",
	inventory_image = "default_pick_mese.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			crumbly={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			snappy={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			choppy={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			dig_immediate={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
		},
		damage_groups = {fleshy=100},
	},
})

-- Max. damage sword
minetest.register_tool("tools:sword_mese", {
	description = "Mese Sword".."\n"..
		"Damage: fleshy=32767, fiery=32767, icy=32767".."\n"..
		"Full Punch Interval: 0.0s",
	inventory_image = "default_sword_mese.png",
	tool_capabilities = {
		full_punch_interval = 0.0,
		max_drop_level=1,
		damage_groups = {fleshy=32767, fiery=32767, icy=32767},
	}
})

mtools = {}
local mod_path = minetest.get_modpath("mfarming")

-- dofile(mod_path .. '/picks.lua')
-- dofile(mod_path .. '/shovels.lua')
-- dofile(mod_path .. '/axes.lua')
-- dofile(mod_path .. '/shears.lua')
-- dofile(mod_path .. '/swords.lua')

-- dofile(mod_path .. '/crafts.lua')
