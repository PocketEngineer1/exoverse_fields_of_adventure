minetest.register_node("mfarming:farmable_soil", {
	description = "Farmable Soil",
	tiles = {
		"default_dirt.png^farming_soil.png",
		"default_dirt.png",
		"default_dirt.png",
		"default_dirt.png",
		"default_dirt.png",
		"default_dirt.png",
	},
	groups = {crumbly=3, soil=1, farmable_soil=1},
})

minetest.register_node("mfarming:farmable_soil_irrigated", {
	description = "Irrigated Farmable Soil",
	tiles = {
		"default_dirt.png^farming_soil_wet.png",
		"default_dirt.png^farming_soil_wet_side.png",
		"default_dirt.png^farming_soil_wet_side.png",
		"default_dirt.png^farming_soil_wet_side.png",
		"default_dirt.png^farming_soil_wet_side.png",
		"default_dirt.png^farming_soil_wet_side.png",
	},
	groups = {crumbly = 3, soil = 1, farmable_soil = 1, irrigated_soil = 1},
    drop = "mfarming:farmable_soil",
})