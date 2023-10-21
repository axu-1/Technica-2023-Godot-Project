extends CanvasLayer

@export var main_menu : PackedScene

@onready var food_num = $%FoodNum
@onready var rent_num = $%RentNum
@onready var emergency_num = $%EmergencyNum
@onready var leisure_num = $%LeisureNum
@onready var utilities_num = $%UtilitiesNum
@onready var income_num = $%IncomeLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	set_stats()
	income_num.text = "$" + str(Game.income)

func _on_food_slider_value_changed(value):
	food_num.text = "$" + str(value)
	Game.food = value

func _on_rent_slider_value_changed(value):
	rent_num.text = "$" + str(value)
	Game.rent = value

func _on_emergency_slider_value_changed(value):
	emergency_num.text = "$" + str(value)
	Game.emergency = value

func _on_leisure_slider_value_changed(value):
	leisure_num.text = "$" + str(value)
	Game.leisure = value
	
func _on_utlities_slider_value_changed(value):
	utilities_num.text = "$" + str(value)
	Game.utilities = value
	
func set_stats():
	match Game.difficulty_lvl:
		Game.difficulty.EASY:
			Game.income = 10000
		Game.difficulty.HARD:
			Game.income = 5000

func _on_home_button_pressed():
	Game.emit_signal("goto_scene", main_menu)
