extends Resource

var title: String
var description: String
var cost1: int
var cost2: int

func _init(p_title = "", p_description = "", p_cost1 = 0, p_cost2 = 0):
	if Game.month in [11, 12, 1, 2]:
		title = "Heat"
		description = "Ahhh it's so code outside. Do you wanna turn on the heat?"
		cost1 = 0
		cost2 = 30
	elif Game.month in [5, 6, 7, 8]:
		title = "AC"
		description = "Ahhh it's so hot outside. Do you wanna turn on the AC?"
		cost1 = 0
		cost2 = 30
