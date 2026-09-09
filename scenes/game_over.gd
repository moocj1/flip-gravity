extends Control

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("flip"):
		get_tree().change_scene_to_file("res://scenes/main.tscn")
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
