extends Node

@export var food: Resource

enum event_type_enum {RENT, FOOD, TRANSIT, UTILITIES, INSURANCE, LEISURE, SAVINGS}
var event_type
var title: String
var description: String
var cost: int
var cost1: int
var cost2: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if event_type == event_type_enum.FOOD:
		title = food.title
		description = food.description
		cost1 = food.cost1
		cost2 = food.cost2
	
	$Title.set_text(title)
	$Description.set_text(description)
	if Game.total_money < 0:
		Game.emit_signal(Game.player_died)

func _on_option_1_pressed():
	cost = cost1
	Game.total_money -= cost1
	
func _on_option_2_pressed():
	cost = cost2
	Game.total_money -= cost2

