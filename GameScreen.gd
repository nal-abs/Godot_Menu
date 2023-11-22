extends Control

var click = 0;


func _ready():
	$TextureButton.connect('pressed', self, '_texture_react')
	
func _texture_react():
	click = click + 1;
	$Label.text = str('Clicked: ') + str(click)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Pause_pressed():
	get_tree().change_scene_to(load("res://PauseScreen.tscn"))
