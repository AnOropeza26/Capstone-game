extends Area2D

<<<<<<< Updated upstream


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	queue_free()
=======
@onready var my_timer: Timer = get_node("res://timer.tscn")


func _on_body_entered(body):
	if body.name == "Player":
		var timer = get_node("res://timer.tscn")
		if timer:
			timer.stop()
			timer.start()
		queue_free() 
>>>>>>> Stashed changes
