extends Node2D

func _ready() -> void:
	$Spike.body_entered.connect(_on_spike_body_entered)
	
func _on_spike_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
