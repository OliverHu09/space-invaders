extends Area2D

var speed = 450
var viu = true
func _ready() -> void:
	add_to_group("projectils")
	pass
func _physics_process(delta: float) -> void:
	position += speed * Vector2(0, -1) * delta
	if(position.y<0):
		viu= false
		
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemics"):
		area.queue_free()
		queue_free()
		Varglobals.puntuacio += 10 
	
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
