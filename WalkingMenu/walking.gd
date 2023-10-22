extends Node2D

@export var event_displayer : PackedScene
@export var event_option : PackedScene

enum event_types {FOOD, TRANSIT, UTILITIES, LEISURE, AC_HEAT, EMERGENCY}
var event_order = [event_types.FOOD, event_types.LEISURE, event_types.TRANSIT, event_types.UTILITIES]
# If within summer/winter months, add AC/heat event

# Called when the node enters the scene tree for the first time.
func _ready():
#Note: Logic for luck of emergency is in event_displayer class
#	var emergency = event_displayer.instantiate()
#	add_child(emergency)
	
	var new_event_option = event_option.instantiate()
	add_child(new_event_option)
	new_event_option.event_type = new_event_option.event_type_enum.LEISURE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Make dependent on encountering events
	pass
