extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _button_pressed():
	get_tree().change_scene_to(load("res://GameScreen.tscn"))



func _on_Exit_pressed():
	get_tree().quit()

