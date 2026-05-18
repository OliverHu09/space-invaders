extends Area2D

@export var bala_alien_node : PackedScene
@onready var timer: Timer = $Timer

var direccio= Vector2.RIGHT
var velocitat= 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("enemics")
	timer.wait_time =randf_range(1,10)
	timer.start()

func _process(delta: float) -> void:
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free()

func _on_body_entered(body: Node2D) -> void:
	body.die()
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	var b: Area2D = bala_alien_node.instantiate()
	if is_instance_valid(Varglobals.Bales):
		Varglobals.Bales.add_child(b)
	b.global_position = global_position
