extends Area2D

var speed = 750

func _physics_process(delta: float) -> void:
	position += speed*Vector2(0, -1)*delta

#func _on_Bullet_body_entered(body):
	#if body.is_in_group("aliens"):
		#body.queue_free()
	#queue_free()
