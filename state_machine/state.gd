class_name State
extends Node


signal state_changed(new_state: State)


func enter() -> void:
	pass


func unhandled_input(_event: InputEvent) -> void:
	pass


func process(_delta: float) -> void:
	pass


func physics_process(_delta: float) -> void:
	pass


func exit() -> void:
	pass
