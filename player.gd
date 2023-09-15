extends CharacterBody2D

var move_speed : float = 125
var move_speed_diag : float = floor(move_speed * ((sqrt(2))/ 2)) + 37 # keeps the speed constant even when moving diagonal
var move_dir: get = _get_input_direction
	
func _physics_process(delta):
	velocity = move_dir * move_speed
	move_and_slide()

func _get_input_direction():
	var move_x = -int(Input.is_action_pressed("ui_left")) + int(Input.is_action_pressed("ui_right"))
	var move_y = -int(Input.is_action_pressed("ui_up")) + int(Input.is_action_pressed("ui_down"))
	
	# Fix Diagonal Speed
	if move_x && move_y:
		move_speed = move_speed_diag
	else:
		move_speed = 125
		
	print(move_speed)

	move_dir = Vector2(move_x, move_y).normalized()
	return move_dir
	