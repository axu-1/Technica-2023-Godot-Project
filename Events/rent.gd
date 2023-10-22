extends Resource


@export var title: String
@export var description: String
@export var cost: int

func _init(title = "", description = "", cost = 0):
	title = "Rent"
	description = "Knock knock! Rent for your apartment is due! You pay $200"
	cost = 200
