extends Resource


@export var title: String
@export var description: String
@export var cost1: int
@export var cost2: int

func _init(p_title = "", p_description = "", p_cost1 = 0, p_cost2 = 0):
	var rand_int = randi_range(0, 1)
	if rand_int == 0:
		title = "Fast Food?"
		description = "Time to eat! Do you want to cook food at home or get takeout this month? Cooking food at home costs $100 
#		and getting takeout costs $200"
		cost1 = 100
		cost2 = 200
	elif rand_int == 1:
		title = "Going Green"
		description = "You've been considering eating healthier for a while now, but healtheir foods are more costly. How should 
		I shop for grocceries?"
		cost1 = 350
		cost2 = 500
