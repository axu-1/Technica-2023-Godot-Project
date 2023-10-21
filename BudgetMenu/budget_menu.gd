extends CanvasLayer

@onready var income_num = $%IncomeNum
@onready var rent_num = $%RentNum
@onready var food_num = $%FoodNum
@onready var transit_num = $%TransitNum
@onready var insurance_num = $%InsuranceyNum
@onready var leisure_num = $%LeisureNum
@onready var utilities_num = $%UtilitiesNum
@onready var savings_num = $%SavingsNum

@onready var rent_slider = $%RentSlider
@onready var food_slider = $%RentSlider
@onready var transit_slider = $%RentSlider
@onready var utilities_slider = $%RentSlider
@onready var insurance_slider = $%RentSlider
@onready var leisure_slider = $%RentSlider
@onready var savings_slider = $%RentSlider

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

func _on_insurance_slider_value_changed(value):
	insurance_num.text = "$" + str(value)
	Game.insurance = value

func _on_leisure_slider_value_changed(value):
	leisure_num.text = "$" + str(value)
	Game.leisure = value
	
func _on_utlities_slider_value_changed(value):
	utilities_num.text = "$" + str(value)
	Game.utilities = value

func _on_transit_slider_value_changed(value):
	transit_num.text = "$" + str(value)
	Game.transit = value

func _on_savings_slider_value_changed(value):
	savings_num.text = "$" + str(value)
	Game.savings = value

func set_stats():
	match Game.difficulty_lvl:
		Game.difficulty.EASY:
			Game.income = 10000
		Game.difficulty.HARD:
			Game.income = 5000

