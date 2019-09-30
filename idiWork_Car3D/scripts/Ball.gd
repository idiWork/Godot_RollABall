extends KinematicBody

var movement = Vector3()

func _ready():
	pass

func _physics_process(delta):
	
	movement.y -= 1
	
	if Input.is_action_pressed("ui_up"):
		movement.z += 0.2
	elif Input.is_action_pressed("ui_down"):
		movement.z -= 0.2
	elif Input.is_action_pressed("ui_left"):
		movement.x += 0.2
	elif Input.is_action_pressed("ui_right"):
		movement.x -= 0.2
	
	move_and_slide(movement)