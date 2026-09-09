extends CharacterBody2D


@export var gravity: float = 1000
@export var flip_cooldown: float = 0.2

# The direction 1.0 means downward so +ve gravity.
var direction: float = 1.0

var cooldown_remaining: float = 0.0


func _physics_process(delta: float) -> void:
	cooldown_remaining -= delta
	
	if Input.is_action_just_pressed("flip"):
		if cooldown_remaining <= 0.0:
			# Flip the gravity.
			direction *= -1.0
			cooldown_remaining = flip_cooldown
	
	# Accelerates the velocity so it looks like its affected by gravity.
	velocity.y += (gravity * direction * delta)
	
	move_and_slide()	
