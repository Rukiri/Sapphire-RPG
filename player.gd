extends CharacterBody2D

var move_speed : int = 50
var move_dir: get = _get_input_direction

func _process(delta):
	global_position = global_position.round()

func _physics_process(delta):
	velocity = move_dir * move_speed
	move_and_slide()

func _get_input_direction():
	var move_x = -int(Input.is_action_pressed("ui_left")) + int(Input.is_action_pressed("ui_right"))
	var move_y = -int(Input.is_action_pressed("ui_up")) + int(Input.is_action_pressed("ui_down"))

	move_dir = round(Vector2(move_x, move_y).normalized())
	return move_dir
