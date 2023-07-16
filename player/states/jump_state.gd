class_name JumpState
extends MoveState


@export var walk_state: WalkState
@export var fall_state: FallState


func enter() -> void:
	player.velocity.y = -player.jump_velocity


func unhandled_input(event: InputEvent) -> void:
	if event.is_action_released("jump"):
		player.velocity.y /= player.jump_height_divisor


func physics_process(delta: float) -> void:
	player.velocity.y += player.gravity * delta
	
	super(delta)
	
	if player.is_on_floor():
		state_changed.emit(walk_state)
	if player.velocity.y > 0:
		state_changed.emit(fall_state)
