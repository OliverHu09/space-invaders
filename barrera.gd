extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("barreres")
	pass

func _on_area_entered(area):
	if area.is_in_group("projectils") or area.is_in_group("bales_enemigas"):
		area.queue_free()
