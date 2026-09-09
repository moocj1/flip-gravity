extends CharacterBody2D


@export var gravity: float = 1000

var direction: float = 1.0
# The direction 1.0 means downward so +ve gravity.

func _physics_process(delta: float) -> void:
	# Accelerates the velocity so it looks like its affected by gravity.
	velocity.y += (gravity * direction * delta)
	move_and_slide()	
