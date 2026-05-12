extends Area2D
var direccio= Vector2.RIGHT
var velocitat= 100
var caca='caca'

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position+= direccio*velocitat*delta
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free()

func _on_body_entered(body: Node2D) -> void:
	body.die()
	pass # Replace with function body.
