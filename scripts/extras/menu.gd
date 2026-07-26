extends Control
@onready var button_click: AudioStreamPlayer2D = $button_click


func _on_start_pressed() -> void:
	button_click.play()
	await button_click.finished
	get_tree().change_scene_to_file("res://scenes/misc_scenes/game.tscn")
	pass
	 
	
func _on_quit_pressed() -> void:
	button_click.play()
	await button_click.finished
	get_tree().quit()


func _on_controls_pressed() -> void:
	button_click.play()
	await button_click.finished
	get_tree().change_scene_to_file("res://scenes/misc_scenes/control.tscn")
