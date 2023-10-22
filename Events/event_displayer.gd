extends Node

@export var rent: Resource

enum event_type_enum {RENT, FOOD, TRANSIT, UTILITIES, INSURANCE, LEISURE, SAVINGS}
var event_type
var title: String
var description: String
var cost: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if event_type == event_type_enum.RENT:
		title = rent.title
		description = rent.description
		cost = rent.cost
		
	$Title.set_text(title)
	$Description.set_text(description)
	Game.total_money -= cost
	#if Game.total_money < 0:
		#Game.emit_signal(Game.player_died)
