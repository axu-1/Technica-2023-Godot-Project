extends Node

@export var emergency: Resource
@export var game_over: PackedScene

var event_type
var title: String
var description: String
var cost: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	title = emergency.title
	description = emergency.description
	cost = emergency.cost
		
	$Title.set_text(title)
	$Description.set_text(description)
	Game.total_money -= cost
	
	if Game.total_money < 0:
		Game.emit_signal("goto_scene", game_over)


func _on_button_pressed():
	pass # Replace with function body.
	#change screen
