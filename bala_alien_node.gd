extends Area2D
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += speed*Vector2(0, 1)*delta
	if (position[1]>700):
		queue_free()
	pass

func _on_body_entered(body: Node2D) -> void:
	body.die()
	queue_free()
	pass # Replace with function body.
