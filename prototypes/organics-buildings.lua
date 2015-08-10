require ("prototypes.pipeConnectors")
require ("util")

data:extend(
{

-- HYDROPONIC FARM
	
	
	
	{
		type = "item",
		name = "hydroponic-farm",
		icon = "__NARMod__/graphics/icons/hydroponic-farm.png",
		flags = {"goes-to-quickbar"},
		subgroup = "organic-production",
		order = "a[hydroponic-farm]",
		place_result = "hydroponic-farm",
		stack_size = 3
	},


	-- HYDROPONIC FARM

	{
		type = "assembling-machine",
		name = "hydroponic-farm",
		icon = "__NARMod__/graphics/icons/hydroponic-farm.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "hydroponic-farm"},
		max_health = 300,
		corpse = "big-remnants",
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		animation =
		{
			filename = "__NARMod__/graphics/entity/hydroponic-farm/hydroponic-farm.png",
			priority = "extra-high",
			width = 99,
			height = 107,
			frame_count = 1,
			shift = {0.0, 0.0}
		},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "180kW",
		ingredient_count = 4,
		crafting_categories = {"hydroponic-farm-crafting"},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			}
		}
	},
	
		{
		type = "recipe",
		name = "hydroponic-farm",
		ingredients =
		{
			{"steel-plate",20},
			{"storage-tank-2",4},
			{"glass-plate", 10},
			{"pipe", 10},
			{"air-compressor", 2},
		},
		energy_required = 10,
		result = "hydroponic-farm",
		enabled = "false",
		result_count = 1
	},


}
)