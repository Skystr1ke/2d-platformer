class_name Player
extends CharacterBody2D


@export var speed: float
@export var friction: float
@export var jump_velocity: float
@export var terminal_velocity: float
@export var gravity_multiplier: float
@export var jump_height_divisor: float

var gravity := ProjectSettings.get_setting("physics/2d/default_gravity") as float


func _enter_tree() -> void:
	for player_state in find_children("*", "PlayerState"):
		player_state.player = self
