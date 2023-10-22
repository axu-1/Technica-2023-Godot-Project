extends Node

@export var emergency: Resource

var event_type
var title: String
var description: String
var cost: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var rand_int = randi_range(0, 10)
	if rand_int == 0:
		title = emergency.title
		description = emergency.description
		cost = emergency.cost
		
	$Title.set_text(title)
	$Description.set_text(description)
	Game.total_money -= cost
	#if Game.total_money < 0:
		#Game.emit_signal(Game.player_died)
