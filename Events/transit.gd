extends Resource


@export var title: String
@export var description: String
@export var cost1: int
@export var cost2: int

func _init(p_title = "", p_description = "", p_cost1 = 0, p_cost2 = 0):
	title = "Uber Cool"
	description = "Choose to take the bus or uber for your commute"
	cost1 = 5
	cost2 = 50
