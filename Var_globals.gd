extends Node
@export var area_bala : Area2D
var permes = false
func _process(delta: float) -> void:
	if(area_bala.postion.y<0):
		print(permes)
		var permes = true
