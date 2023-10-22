extends CanvasLayer

@onready var income_num = $%IncomeLabel
@onready var rent_num = $%RentNum
@onready var food_num = $%FoodNum
@onready var transit_num = $%TransitNum
@onready var insurance_num = $%InsuranceNum
@onready var leisure_num = $%LeisureNum
@onready var utilities_num = $%UtilitiesNum
@onready var savings_num = $%SavingsNum

@onready var rent_slider = $%RentSlider
@onready var food_slider = $%FoodSlider
@onready var transit_slider = $%TransitSlider
@onready var utilities_slider = $%UtilitiesSlider
@onready var insurance_slider = $%InsuranceSlider
@onready var leisure_slider = $%LeisureSlider
@onready var savings_slider = $%SavingsSlider

# Called when the node enters the scene tree for the first time.
func _ready():
	set_stats()
	income_num.text = "Income: $" + str(Game.income)

func _on_food_slider_value_changed(value):
	food_num.text = "$" + str(value)
	Game.food = value
	calculate_balances()

func _on_rent_slider_value_changed(value):
	rent_num.text = "$" + str(value)
	Game.rent = value
	calculate_balances()

func _on_insurance_slider_value_changed(value):
	insurance_num.text = "$" + str(value)
	Game.insurance = value
	calculate_balances()

func _on_leisure_slider_value_changed(value):
	leisure_num.text = "$" + str(value)
	Game.leisure = value
	calculate_balances()
	
func _on_utlities_slider_value_changed(value):
	utilities_num.text = "$" + str(value)
	Game.utilities = value
	calculate_balances()

func _on_transit_slider_value_changed(value):
	transit_num.text = "$" + str(value)
	Game.transit = value
	calculate_balances()

func _on_savings_slider_value_changed(value):
	savings_num.text = "$" + str(value)
	Game.savings = value

func set_stats():
	match Game.difficulty_lvl:
		Game.difficulty.EASY:
			Game.income = 10000
		Game.difficulty.HARD:
			Game.income = 5000
	
	Game.total_money = Game.income
	
func calculate_balances():
	Game.total_spent = Game.food + Game.rent + Game.insurance + Game.leisure + Game.utilities + Game.transit
	Game.savings = Game.total_money - Game.total_spent
	_on_savings_slider_value_changed(Game.savings)
	rent_slider.set_max(Game.total_money)
	food_slider.set_max(Game.total_money)
	insurance_slider.set_max(Game.total_money)
	leisure_slider.set_max(Game.total_money)
	utilities_slider.set_max(Game.total_money)
	transit_slider.set_max(Game.total_money)

