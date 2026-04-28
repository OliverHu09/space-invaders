extends Area2D
var direccio= Vector2.RIGHT
var velocitat= 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+= direccio*velocitat*delta
	pass

func frontera():
	if(direccio==Vector2.RIGHT):
		direccio=Vector2.LEFT
	else:
		direccio=Vector2.RIGHT
	position += Vector2(0,50)

func _on_area_2d_area_entered(_area: Area2D) -> void:
	queue_free()
	pass # Replace with function body.
	
