extends Area2D

var speed = 750

func _physics_process(delta: float) -> void:
	position += speed*Vector2(0, -1)*delta

func _on_area_entered(area: Area2D) -> void:
	queue_free()
	pass # Replace with function body.
