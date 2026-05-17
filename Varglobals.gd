extends Node
@export var area_bala : Area2D
var primer = false
var permes = false
#func _process(delta: float) -> void:
	#if(area_bala.postion.y<0):
		#permes = true
	#else:
		#permes = false
