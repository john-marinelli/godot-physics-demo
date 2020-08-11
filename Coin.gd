extends Area2D


var pointValue : int = 10

func _on_Coin_body_entered(body):
	body.addPoints(pointValue)
	queue_free()
