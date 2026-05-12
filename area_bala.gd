extends Area2D

var speed = 750
var viu = true
func _ready() -> void:
	add_to_group("projectils")
	pass
func _physics_process(delta: float) -> void:
	position += speed*Vector2(0, -1)*delta
func _on_area_entered(area: Area2D) -> void:
	var viu = false
	queue_free()
	pass # Replace with function body.
func _on_body_entered(body):
	
	if body.is_in_group("barreres"):
		queue_free()
