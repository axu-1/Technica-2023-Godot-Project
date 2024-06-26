extends Node

# PLACE ALL SIGNALS HERE

#GAME CONTROL
signal goto_scene(scene)
signal restarted

signal next_scene_triggered
#signal portal_entered

signal game_over

var seconds_decimal = 1.0

func _process(delta):
	seconds_decimal -= delta
	if seconds_decimal < 0:
		seconds_decimal = 1.0

#PLAYER VARIABLES
enum difficulty {EASY, HARD}
var difficulty_lvl

var total_money = 0
var total_spent = 0
var food = 0
var rent = 0
var insurance = 0
var leisure = 0
var utilities = 0
var transit = 0

var savings = 0

var income = 0
var happiness = 5 #min: 0 (dead), max: 10
var month = 1 #month goes from 1 to 12


