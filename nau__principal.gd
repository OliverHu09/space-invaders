extends CharacterBody2D
var direccio : Vector2=Vector2(0, 0)
var velocitat: float=300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	direccio=Vector2(0, 0)
	direccio=Input.get_vector("esquerra", "dreta", "blabla", "bleble")
	position+=velocitat*direccio.normalized()*delta
	move_and_slide()
