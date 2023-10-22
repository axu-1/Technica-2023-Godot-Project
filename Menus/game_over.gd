extends CanvasLayer

@onready var label = $Label
@onready var label2 = $Label2
# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "Your final disposable income: $" + str(Game.total_money - Game.savings)
	label2.text = "Your final savings are: " + str(Game.savings)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
