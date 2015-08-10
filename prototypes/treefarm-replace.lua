data.raw["item"]["tf-germling"].subgroup = "organic-fields"
data.raw["item"]["tf-germling"].stack_size = 50
data.raw["item"]["tf-coral-seed"].subgroup = "organic-fields"
data.raw["item"]["tf-charcoal"].subgroup = "cokery-crafting"
data.raw["recipe"]["tf-charcoal"].category = "cokery-crafting"
data.raw["recipe"]["tf-charcoal"].subgroup = "cokery-crafting"
data.raw["recipe"]["tf-charcoal"].ingredients = {{"raw-wood",10}}
data.raw["recipe"]["tf-charcoal"].result_count = 9
data.raw["recipe"]["tf-coal"].hidden = true
data.raw["recipe"]["tf-coal-2"].hidden = true
data.raw["item"]["tf-coke-coal"].subgroup = "cokery-crafting"
data.raw["recipe"]["tf-coke-coal"].category = "cokery-crafting"
data.raw["item"]["tf-ash"].subgroup = "cokery-crafting"
data.raw["item"]["tf-ash"].stack_size = 50
data.raw["recipe"]["tf-ash"].category = "cokery-crafting"
data.raw["item"]["tf-field"].subgroup = "organic-fields"
data.raw["item"]["tf-field"].stack_size = 1
data.raw["recipe"]["tf-field"].ingredients = {
	{"wooden-chest", 1},
	{"burner-inserter", 1}
}
data.raw["item"]["tf-fieldmk2"].subgroup = "organic-fields"
data.raw["item"]["tf-fieldmk2"].stack_size = 1
data.raw["recipe"]["tf-fieldmk2"].ingredients = {
	{"advanced-circuit",20},
	{"copper-cable",40},
	{"steel-plate",20}
}
data.raw["recipe"]["tf-fieldmk2"].energy_required = 30
data.raw["item"]["tf-cokery"].subgroup = "alt-production"
data.raw["item"]["tf-cokery"].stack_size = 5
data.raw["recipe"]["tf-cokery"].ingredients = {
	{"iron-plate",10},
	{"iron-gear-wheel",5},
	{"stone-furnace",2}
}
data.raw["recipe"]["tf-cokery"].energy_required = 10
data.raw["assembling-machine"]["tf-cokery"].crafting_categories = "cokery-crafting"
data.raw["item"]["tf-bioreactor"].subgroup = "organic-production"
data.raw["item"]["tf-bioreactor"].stack_size = 3
data.raw["recipe"]["tf-bioreactor"].ingredients = {
	{"assembling-machine-2",1},
	{"storage-tank-2",4},
	{"steel-plate",5}
}
data.raw["recipe"]["tf-bioreactor"].energy_required = 20

