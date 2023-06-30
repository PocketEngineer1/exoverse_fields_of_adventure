minetest.register_node("mfarming:farmable_soil", {
	description = "Farmable Soil",
	tiles = {
		"mdefault_dirt.png^mfarming_soil.png",
		"mdefault_dirt.png",
		"mdefault_dirt.png",
		"mdefault_dirt.png",
		"mdefault_dirt.png",
		"mdefault_dirt.png",
	},
	groups = {crumbly=3, soil=1, farmable_soil=1},
})

minetest.register_node("mfarming:farmable_soil_irrigated", {
	description = "Irrigated Farmable Soil",
	tiles = {
		"mdefault_dirt.png^mfarming_soil_wet.png",
		"mdefault_dirt.png^mfarming_soil_wet_side.png",
		"mdefault_dirt.png^mfarming_soil_wet_side.png",
		"mdefault_dirt.png^mfarming_soil_wet_side.png",
		"mdefault_dirt.png^mfarming_soil_wet_side.png",
		"mdefault_dirt.png^mfarming_soil_wet_side.png",
	},
	groups = {crumbly = 3, soil = 1, farmable_soil = 1, irrigated_soil = 1},
    drop = "mmfarming:farmable_soil",
})