extends Node2D


func _ready() -> void:
	# Comprobar si Varglobals existe y tiene la variable Bales
	await get_tree().process_frame
	if Varglobals:
		Varglobals.Bales = self
