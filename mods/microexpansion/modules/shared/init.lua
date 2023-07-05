-- shared/init.lua

local me = microexpansion

-- This mostly contains items that are used by multiple modules and
-- don't really fit with anything else.

-- [register item] Steel Infused Obsidian Ingot
me.register_item("steel_infused_obsidian_ingot", {
	description = "Steel Infused Obsidian Ingot",
	recipe = {
		{ 2, {
				{ "mdefault:bar_iron", "mdefault:obsidian_shard", "mdefault:bar_iron" },
			},
		},
	},
})

-- [register item] Machine Casing
me.register_item("machine_casing", {
	description = "Machine Casing",
	recipe = {
		{ 1, {
				{"mdefault:bar_iron", "mdefault:bar_iron", "mdefault:bar_iron"},
				{"mdefault:bar_iron", "mdefault:bar_copper", "mdefault:bar_iron"},
				{"mdefault:bar_iron", "mdefault:bar_iron", "mdefault:bar_iron"},
			},
		},
	},
})
