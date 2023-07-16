class_name MoveState
extends PlayerState


func physics_process(_delta: float) -> void:
	var direction: float = Input.get_axis("left", "right")
	player.velocity.x = direction * player.speed
	player.move_and_slide()
