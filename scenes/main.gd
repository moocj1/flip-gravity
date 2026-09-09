extends Node2D

var game_over: bool = false 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Spike.body_entered.connect(_on_spike_body_entered)
	$UI/GameOverLabel.hide()
	
func _on_spike_body_entered(_body: Node2D) -> void:
	game_over = true 
	$Ship.queue_free() 
	$UI/GameOverLabel.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	if game_over and Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
