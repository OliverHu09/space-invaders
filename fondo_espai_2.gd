extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _teleport() -> void:
	position.y=-1410

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+=3*Vector2(0, 1)
	if position.y>1340:
		_teleport()
