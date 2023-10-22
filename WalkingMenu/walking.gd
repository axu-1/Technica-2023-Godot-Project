extends Node2D

@export var event_displayer : PackedScene
@export var event_option : PackedScene
@export var budget_menu : PackedScene
@export var game_over : PackedScene

enum event_types {FOOD, TRANSIT, UTILITIES, LEISURE, AC_HEAT, EMERGENCY}
var event_order = [event_types.FOOD, event_types.LEISURE, event_types.TRANSIT, event_types.UTILITIES]
# If within summer/winter months, add AC/heat event
#var rand_order = []
var emergency_done = false
var event_count = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	event_count = 0
	if Game.month in [11, 12, 1, 2, 5, 6, 7, 8]:
		event_order.append(event_types.AC_HEAT)
#	var rand_int = randi_range(0, event_order.size)
#	for (int i = 0; i < rand_int; i++):
#		rand_order.append()

#	for event in event_order:
#		var new_event_option = event_option.instantiate()
#		add_child(new_event_option)
#		new_event_option.event_type = event
#		var rand_int = randi_range(0, 10)
#		if rand_int == 0 and !emergency_done:
#			var emergency = event_displayer.instantiate()
#			add_child(emergency)
#			emergency_done = true
	
	var new_event_option = event_option.instantiate()
	add_child(new_event_option)
	new_event_option.event_type = event_types.FOOD

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Make dependent on encountering events
#	for event in event_order:
#		var new_event_option = event_option.instantiate()
#		add_child(new_event_option)
#		new_event_option.event_type = event
#		var rand_int = randi_range(0, 10)
#		if rand_int == 0 and !emergency_done:
#			var emergency = event_displayer.instantiate()
#			add_child(emergency)
#			emergency_done = true
		
#	var new_event_option = event_option.instantiate()
#	add_child(new_event_option)
#	new_event_option.event_type = event_order[event_count]
#	event_count += 1
	
#	var rand_int = randi_range(0, 10)
#	if rand_int == 0 and !emergency_done:
#		var emergency = event_displayer.instantiate()
#		add_child(emergency)
#		emergency_done = true
		
	if event_count >= event_order.size():
		Game.month += 1
		Game.emit_signal("goto_scene", budget_menu)
	if Game.total_money < 0:
		Game.emit_signal("goto_scene", game_over)
