extends ColorRect


func _on_Back_pressed():
	get_tree().change_scene_to(load("res://GameScreen.tscn"))

	
func _on_Home_pressed():
	get_tree().change_scene_to(load("res://Main menu.tscn"))

