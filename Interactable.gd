extends CollisionShape


var playerinput = false
var present = false
func _process(delta):
	if present:
		if Input.is_action_just_pressed("select"):
			playerinput = true
			$AnimationPlayer.play("DoorOpen")
			$Label.hide()
		
func _on_Spatial_body_entered(body):
	present = true
	$Label.show()
		
	
func _on_Spatial_body_exited(body):
	if playerinput:
		$AnimationPlayer.play_backwards("DoorOpen")
		playerinput = false
	$Label.hide()
	present = false





