extends Spatial


var player_infront = false

var door_state = false


func _input(event):
	
	if Input.is_action_just_pressed("E"):
		
		if player_infront == true and $AnimationPlayer.is_playing() == false:
			door_state = door_state
			if door_state == true:
				$AnimationPlayer.play("DoorOpen")
			else:
				$AnimationPlayer.play("DoorClose")








