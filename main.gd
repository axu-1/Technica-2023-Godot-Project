extends Node

#Scene change variables
@export var start_scene : PackedScene # as scene
#export (PackedScene) var map
var current_level # as scene
var current_level_path # as NodePath in string form

func _ready():
	# Instances starting scene at position 1
	current_level = start_scene.instantiate()
	add_child(current_level)
	
	current_level_path = current_level.scene_file_path
	
	Game.goto_scene.connect(_on_goto_scene)
	#SignalManager.connect("goto_map", self, "_on_goto_map")

func _on_goto_scene(scene):

	# Wait for fade to complete (will refactor)
	await get_tree().create_timer(.5).timeout
	# Remove current scene
	current_level.queue_free()
	# Load and instance the new scene.
	current_level = scene.instantiate()
	# Add it to the world.
	call_deferred("add_child", current_level)
	
	# Sets the new level path for rewinding
	current_level_path = current_level.scene_file_path
	
#func _on_goto_map():
	#SignalManager.emit_signal("goto_scene", map)

#func _on_game_over():
#	Game.emit_signal("goto_scene", game_over)
