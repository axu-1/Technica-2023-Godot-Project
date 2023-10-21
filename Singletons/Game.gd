extends Node

# PLACE ALL SIGNALS HERE

#GAME CONTROL
signal goto_scene(scene)
signal restarted

signal next_scene_triggered
signal portal_entered

signal player_killed(body)
signal died

var seconds_decimal = 1.0

func _process(delta):
	seconds_decimal -= delta
	if seconds_decimal < 0:
		seconds_decimal = 1.0

