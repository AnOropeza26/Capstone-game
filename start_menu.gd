extends CenterContainer

func _on_start_game_button_pressed() -> void:  
	get_tree().change_scene_to_file("res://dialouge.tscn") 
	


func _on_quit_button_pressed() -> void:
	get_tree().quit()
