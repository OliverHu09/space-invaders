extends Node2D


func _ready() -> void:
	# Comprobar si Varglobals existe y tiene la variable Bales
	if has_node("/root/Varglobals"):
		Varglobals.Bales = self
	else:
		print("Error: Varglobals no encontrado")
