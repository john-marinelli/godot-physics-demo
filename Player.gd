extends RigidBody2D

var score : int = 0
export var spinSpeed = 10


func _input(event):
	var relative = (position.distance_to(event.position) / 10)
	var spinAngle = get_angle_to(get_global_mouse_position())
	if Input.is_action_just_pressed("yAxis"):
		apply_impulse(event.position, Vector2(relative, 0).rotated(spinAngle))
		
	elif Input.is_action_just_pressed(("xAxis")):
		apply_impulse(event.position, Vector2(relative, relative))
		
		
func addPoints(value):
	score += value
