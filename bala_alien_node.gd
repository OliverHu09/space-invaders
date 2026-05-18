extends Area2D
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("bales_enemigas")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += speed*Vector2(0, 1)*delta
	pass

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Nau principal" or body.is_in_group("jugador"):
		if body.has_method("die"):
			body.die()
	queue_free()
	pass # Replace with function body.
