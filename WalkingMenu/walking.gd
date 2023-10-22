extends Node2D

@export var event_displayer : PackedScene
@export var event_option : PackedScene

@export var budget_menu : PackedScene
@export var game_over : PackedScene

@onready var timer = $Timer

enum event_types {FOOD, TRANSIT, UTILITIES, LEISURE, AC_HEAT, EMERGENCY}
var event_order = [event_types.FOOD, event_types.LEISURE, event_types.TRANSIT, event_types.UTILITIES]
# If within summer/winter months, add AC/heat event
var emergency_done = false
var e_index = 0
var event_done = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if Game.month in [11, 12, 1, 2, 5, 6, 7, 8]:
		event_order.append(event_types.AC_HEAT)
	var rand_int = randi_range(0, event_order.size())
	event_done = false
	Game.event_closed.connect(on_event_closed)
	
#	var new_event_option = event_option.instantiate()
#	add_child(new_event_option)
#	new_event_option.event_type = new_event_option.event_type_enum.LEISURE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Make dependent on encountering events
#	var rand_int = randi_range(0, 10)
#	if rand_int == 0 and !emergency_done:
#		var emergency = event_displayer.instantiate()
#		add_child(emergency)
#		emergency_done = true
		
#	Game.month += 1
#	Game.emit_signal("goto_scene", budget_menu)
	if !event_done:
		timer.start()
		event_done = true
	
	if Game.total_money < 0:
		Game.emit_signal("goto_scene", game_over)
	
func _on_timer_timeout():
	print("timer")
#	var rand_int = randi_range(0, 10)
	var rand_int = 0
#	if rand_int == 0 and !emergency_done:
#		var emergency = event_displayer.instantiate()
#		add_child(emergency)
#		emergency_done = true
#		event_done = false
		#Game.emit_signal("on_event_closed")
	if e_index < event_order.size() and event_order != []:
		var new_event_option = event_option.instantiate()
		add_child(new_event_option)
		new_event_option.event_type = event_order[e_index]
		e_index += 1
#		event_done = false
		#Game.emit_signal("on_event_closed")

func on_event_closed():
	timer.start()

