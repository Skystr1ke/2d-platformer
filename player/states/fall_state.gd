class_name FallState
extends MoveState


@export var walk_state: WalkState


func physics_process(delta: float) -> void:
	if player.velocity.y >= player.terminal_velocity:
		clampf(player.velocity.y, -INF, player.terminal_velocity)
	else:
		player.velocity.y += player.gravity * player.gravity_multiplier * delta
	
	super(delta)
	
	if player.is_on_floor():
		state_changed.emit(walk_state)
