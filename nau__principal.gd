extends CharacterBody2D

@export var Area_bala : PackedScene
@export var bullet : Area2D
@onready var player = $Bala
@onready var general = $Varglobals
@onready var cooldownTimer := $CooldownTimer

var vides = 3
var direccio : Vector2=Vector2(0, 0)
var velocitat: float=300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("jugador")
	actualitzar_vides_ui()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("dispar") and cooldownTimer.is_stopped():
		shoot()
	var direccio_x = Input.get_axis("esquerra", "dreta")
	velocity.x = direccio_x * velocitat
	move_and_slide()

func shoot():
	if Area_bala:
		var b: Area2D = Area_bala.instantiate()
		if Varglobals.Bales:
			Varglobals.Bales.add_child(b)
			b.global_position = global_position + Vector2(0, -30)
			cooldownTimer.start()
			
func die():
	vides -= 1
	actualitzar_vides_ui()
	
	if vides <= 0:
		queue_free()
		print("Game Over!")
	else:
		print("Vides restants: ", vides)
		
func actualitzar_vides_ui():
	var label_vides = get_tree().get_first_node_in_group("vides_label")
	if label_vides:
		label_vides.text = "Vides: " + str(vides)
