local nukularFuel = table.deepcopy(data.raw.item["nuclear-fuel"])

nukularFuel.name = "nukular-fuel"
nukularFuel.icons = {
	{
	icon = nukularFuel.icon,
	tint={r=1,g=0,b=0,a=0.3}
	},
}
nukularFuel.fuel_value = "100GJ"
nukularFuel.fuel_acceleration_multiplier = 25
nukularFuel.fuel_top_speed_multiplier = 10


local recipe = table.deepcopy(data.raw.recipe["nuclear-fuel"])
recipe.enabled = false
recipe.name = "nukular-fuel"
recipe.ingredients = {
	{ "nuclear-fuel", 100}
}
recipe.result = "nukular-fuel"

data:extend{nukularFuel, recipe}