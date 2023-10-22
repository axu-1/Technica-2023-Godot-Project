extends CanvasLayer

@onready var income_num = $%IncomeLabel
@onready var rent_num = $%RentNum
@onready var food_num = $%FoodNum
@onready var transit_num = $%TransitNum
@onready var leisure_num = $%LeisureNum
@onready var utilities_num = $%UtilitiesNum
@onready var savings_num = $%SavingsNum

@onready var rent_slider = $%RentSlider
@onready var food_slider = $%FoodSlider
@onready var transit_slider = $%TransitSlider
@onready var utilities_slider = $%UtilitiesSlider
@onready var leisure_slider = $%LeisureSlider
@onready var savings_slider = $%SavingsSlider

var budget_max : int
#var slider_list : Array
var slider_dict
var rent = 200

@export var walking : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	set_stats()
	income_num.text = "Income: $" + str(Game.income)
#	slider_list = [rent_slider, food_slider, transit_slider, utilities_slider, insurance_slider, leisure_slider, savings_slider]
#	slider_dict = {rent_slider: rent_slider.value, food_slider: food_slider.value, transit_slider: transit_slider.value,
#		utilities_slider: utilities_slider.value, insurance_slider: insurance_slider.value, leisure_slider: leisure_slider.value, 
#		savings_slider: savings_slider.value}
	slider_dict = {rent_slider: Game.total_money, food_slider: Game.total_money, transit_slider: Game.total_money,
		utilities_slider:Game.total_money, leisure_slider: Game.total_money, savings_slider: Game.total_money}
		#Removed insurance slider
	for slider in slider_dict:
		slider.set_max(Game.total_money)
	rent_slider.value = rent
	rent_num.text = "$" + str(rent)

#func _process(delta):
#	budget_max = Game.total_money - Game.total_spent
#	rent_slider.set_max(budget_max)
#	food_slider.set_max(budget_max)
#	insurance_slider.set_max(budget_max)
#	leisure_slider.set_max(budget_max)
#	utilities_slider.set_max(budget_max)
#	transit_slider.set_max(budget_max)

func _on_food_slider_value_changed(value):
#	if Game.savings > 0:
#	if value < slider_dict[food_slider]:
	food_num.text = "$" + str(value)
	Game.food = value
	calculate_balances()
#		food_slider.editable = true

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
#	if Game.savings <= 0 :
#		for slider in slider_dict:
#			slider_dict[slider] = slider.value
##			slider.editable = false
#	else :
#		for slider in slider_dict:
#			slider_dict[slider] = Game.total_money
	_on_savings_slider_value_changed(Game.savings)
	savings_slider.value = Game.savings
#if max money, set editable to false if moving to a greater position than currently

func _on_button_pressed():
	if Game.savings < 0:
		pass #clickable popup
	else:
		Game.emit_signal("goto_scene", walking)

