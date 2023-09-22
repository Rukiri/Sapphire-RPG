extends CharacterBody2D

var move_speed : int = 60

func _physics_process(delta):
	var move_dir: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity.x = move_toward(velocity.x, move_dir.x * move_speed, 10)
	velocity.y = move_toward(velocity.y, move_dir.y * move_speed, 10)
	move_dir.normalized()
	move_and_slide()
