extends CanvasLayer

@onready var food_num = $%FoodNum
@onready var rent_num = $%RentNum
@onready var emergency_num = $%EmergencyNum
@onready var leisure_num = $%LeisureNum
@onready var utilities_num = $%UtilitiesNum

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_food_slider_value_changed(value):
	food_num.text = value

func _on_rent_slider_value_changed(value):
	rent_num.text = value

func _on_emergency_slider_value_changed(value):
	emergency_num.text = value

func _on_leisure_slider_value_changed(value):
	leisure_num.text = value

func _on_utlities_slider_value_changed(value):
	utilities_num.text = value
