extends Sprite

var toggle = true;
func _on_Button_pressed():
	toggle = !toggle
	if toggle:
		$".".region_rect = Rect2(440, 1738.8, 135.82, 127.82)
	else:
		$".".region_rect = Rect2(300, 1738.8, 135.82, 127.82)

