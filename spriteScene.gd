extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var toggle = true
func _on_Button_pressed():
	toggle = !toggle
	if toggle:
		$Sprite2.region_rect = Rect2(432, 1728, 144, 144)
	else:
		$Sprite2.region_rect = Rect2(288, 1728, 144, 144)
