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


#	pass
var toggle = true;

func _on_Audio_toggled(button_pressed):
	if button_pressed:
		$Audio.text = 'AudioOn'
	else:
		$Audio.text = 'AudioOff'


func _on_TextureButton_pressed():
	toggle = !toggle
	if toggle:
		$TextureButton.texture_normal = preload("res://dark.jpg")
	else:
		$TextureButton.texture_normal = preload("res://Tree.png")


