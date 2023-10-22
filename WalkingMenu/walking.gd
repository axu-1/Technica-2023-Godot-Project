extends Node2D

@export var event_displayer : PackedScene
@export var event_option : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
#	var new_event = event_displayer.instantiate()
#	add_child(new_event)
#	new_event.event_type = new_event.event_type_enum.RENT
	
	var new_event_option = event_option.instantiate()
	add_child(new_event_option)
	new_event_option.event_type = new_event_option.event_type_enum.FOOD

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
