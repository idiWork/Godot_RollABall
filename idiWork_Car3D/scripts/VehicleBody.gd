extends VehicleBody

onready var label = get_node("../Label")

func _ready():
	pass

func _physics_process(delta):
	if(Input.is_key_pressed(KEY_A)):
		steering = min(steering +0.1, +0.75)    #. mas lento usar 0.05
		label.text = 'steering(+): ' + str(steering)
	elif(Input.is_key_pressed(KEY_D)):
		steering = max(steering -0.1, -0.75)    #. mas lento usar 0.05
		label.text = 'steering(-): ' + str(steering)
	else:
        #Volante al centro
        steering = lerp(steering, 0.0, 0.08)
    
	if (Input.is_key_pressed(KEY_W)):
		brake = 0.0
		engine_force = min(engine_force + 1.0, 400)
		label.text = 'engine force: ' + str(engine_force)
	else:
        #Gradualmente reduce el impulso
		engine_force = max(engine_force - 0.5, 0.0)
        
    # Si plica el frenado    
	if(Input.is_key_pressed(KEY_DOWN)):
		engine_force = 0.0
		brake += 0.01