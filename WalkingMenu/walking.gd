extends Node2D

@export var event_displayer : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var new_event = event_displayer.instantiate()
	add_child(new_event)
	new_event.event_type = new_event.event_type_enum.RENT

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass