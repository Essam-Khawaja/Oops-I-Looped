extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	MoveMouse()
	move_and_slide()
	
func MoveMouse():
	if Input.is_action_just_pressed("Move"):
		global_position = Vector2($"../TileMap".selectedTile - Vector2(0, 6))
