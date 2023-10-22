extends Resource

#@export var title: String
#@export var description: String
#@export var cost1: int
#@export var cost2: int

var title: String
var description: String
var cost1: int
var cost2: int

func _init(p_title = "", p_description = "", p_cost1 = 0, p_cost2 = 0):
	var rand_int = randi_range(0, 3)
	if rand_int == 0:
		title = "Netflix"
		description = "You love watching movies, but are you willing to pay the price?"
		cost1 = 0
		cost2 = 30
	elif rand_int == 1:
		title = "Trip Time!"
		description = "Your friends want to go on a trip to Disneyland. Will you join them?"
		cost1 = 0
		cost2 = 500
	elif rand_int == 2:
		title = "Movies"
		description = "Your friends wanna go see the new Barbie movie. Will you join them?"
		cost1 = 0
		cost2 = 10
	elif rand_int == 3:
		title = "Dinner"
		description = "Your friends wanna go out for dinner. Will you join them?"
		cost1 = 0
		cost2 = 20
	


