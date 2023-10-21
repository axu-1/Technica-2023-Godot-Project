extends Node

@export var budget_menu : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_easy_button_pressed():
	Game.difficulty_lvl = 0
	Game.emit_signal("goto_scene", budget_menu)
	
func _on_hard_button_pressed():
	Game.difficulty_lvl = 1
	Game.emit_signal("goto_scene", budget_menu)
