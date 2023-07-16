class_name WalkState
extends MoveState


@export var jump_state: JumpState
@export var fall_state: FallState


func unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		emit_signal("state_changed", jump_state)


func physics_process(delta: float) -> void:
	super(delta)
	
	if not player.is_on_floor():
		state_changed.emit(fall_state)
