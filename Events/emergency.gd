extends Resource

var title: String
var description: String
var cost: int

func _init(p_title = "", p_description = "", p_cost1 = 0, p_cost2 = 0):
	var rand_int = randi_range(0, 1)
	if rand_int == 0:
		title = "Whoopsy Daisy"
		description = "Oh no! You accidentally tripped on the stairs on the way to class and broke your leg.
			You must pay for you hospital bill"
		cost = 1000
	elif rand_int == 1:
		title = "Out of Order"
		description = "Oh no! Your computer suddenly blue screened. Now, you need to pay for a new one."
		cost = 800
