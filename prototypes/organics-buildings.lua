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

{
		type = "assembling-machine",
		name = "tf-bioreactor",
		icon = "__NARMod__/graphics/icons/bioreactor.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "tf-bioreactor"},
		max_health = 100,
		corpse = "big-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {2, 0} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 2} }}
			},


			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, -1} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, 1} }}
			},
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__NARMod__/graphics/entity/bioreactor/bioreactor.png",
			priority = "high",
			width = 128,
			height = 150,
			frame_count = 26,
			line_length = 13,
			animation_speed = 0.4,
			shift = {0.55, -0.33}
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		crafting_categories = {"bioreactor-crafting"},
		ingredient_count = 8,
		crafting_speed = 1,
		energy_usage = "10kW"
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