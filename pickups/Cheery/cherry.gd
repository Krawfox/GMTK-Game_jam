extends Area2D

	
func spawn_feedback():
	var scene_to_spawn = preload("res://pickups/Feedback/feedback.tscn")
	var new_scene_instance = scene_to_spawn.instantiate()
	get_tree().current_scene.add_child(new_scene_instance)  
	new_scene_instance.global_position = global_position

func _on_body_entered(body):
	if body.name == "Player":
		body.add_time(3.0)
		spawn_feedback()
		queue_free()
