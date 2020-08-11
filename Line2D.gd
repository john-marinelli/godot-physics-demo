extends Line2D

onready var player = get_node("/root/MainScene/Player")

func _process(delta):
	var angle = player.get_angle_to(get_global_mouse_position())
	var distance = player.position.distance_to(get_global_mouse_position())
	clear_points()
	add_point(Vector2(10, 0).rotated(angle))
	add_point(get_global_mouse_position())

		
		
