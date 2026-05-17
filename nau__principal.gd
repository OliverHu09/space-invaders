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
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("dispar") and cooldownTimer.is_stopped()):
		shoot()
	direccio.x=Input.get_axis("esquerra", "dreta")
	position+=velocitat*direccio.normalized()*delta
	move_and_slide()

func shoot():
	var b: Area2D = Area_bala.instantiate()
	%Bales.add_child(b)
	b.global_position = global_position
	cooldownTimer.start()
func die():
	if (vides==0):
		queue_free()
	else:
		vides-=1
