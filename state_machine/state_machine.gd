class_name StateMachine
extends Node


@export var initial_state: State

var _current_state: State


func _enter_tree() -> void:
	for child in get_children():
		if child is State:
			child.state_changed.connect(_on_state_changed)
	
	_current_state = initial_state


func _unhandled_input(event: InputEvent) -> void:
	_current_state.unhandled_input(event)


func _physics_process(delta: float) -> void:
	_current_state.physics_process(delta)


func _on_state_changed(new_state: State) -> void:
	_current_state.exit()
	_current_state = new_state
	_current_state.enter()
