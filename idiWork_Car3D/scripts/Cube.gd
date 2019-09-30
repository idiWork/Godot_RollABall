extends Area

onready var label = get_node("../../Label")

func _on_Cube_body_entered(body):
	label.add_puntos()
	queue_free()
