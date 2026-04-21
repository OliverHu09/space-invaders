extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _teleport() -> void:
	position.x=0
	position.y=0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+=2*Vector2(0, 1)
	if position.y>1370:
		_teleport()
