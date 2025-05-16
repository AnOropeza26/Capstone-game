extends Area2D


# Called when the node enters the scene tree for the first time.
func _on_body_entered(body: Node2D) -> void:
	
	
	var hearts = get_tree().get_nodes_in_group("Hearts")
	if hearts.size() == 1:
		Events.level_completed.emit()
