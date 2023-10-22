extends Resource


@export var title: String
@export var description: String
@export var cost1: int
@export var cost2: int

func _init(p_title = "", p_description = "", p_cost1 = 0, p_cost2 = 0):
		title = "Fast Food?"
		description = "Which internet option do you prefer? (low vs high speed)"
		cost1 = 55
		cost2 = 100
