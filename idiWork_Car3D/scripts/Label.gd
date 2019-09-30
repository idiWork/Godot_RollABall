extends Label

var puntos = 0
var max_puntos = 4

func add_puntos():
	puntos += 1
	text = "Puntos: " + str(puntos)
	
	if puntos == max_puntos:
		get_tree().reload_current_scene()