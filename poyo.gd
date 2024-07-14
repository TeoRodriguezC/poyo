extends CharacterBody2D  #include como las librerias de ardoinio, el berdecito es un ojeto ... ctrl y le pico para documentasuiohn
@onready var popoyo = $popoyo
@onready var collision_shape_2d = $CollisionShape2D
@onready var area_2d : Area2D = $Area2D

@export var valorcomida = 15
var grabedat = 10
var velocidat = 10
var saltovelos = 400

func _ready(): 
	area_2d.area_entered.connect (tragasion)

func tragasion (area):
	saltovelos = saltovelos - valorcomida
	area.queue_free()

func _physics_process(delta):
	velocity.y += grabedat
	if(velocity.y >= 0):
		collision_shape_2d.disabled = false
	
	if (Input.is_action_pressed("movderecha")):
		velocity.x += velocidat
		popoyo.flip_h = false
	if (Input.is_action_pressed("movizquierda")):
		velocity.x -= velocidat
		popoyo.flip_h = true

	if (move_and_slide()):
		velocity.y -= saltovelos
		collision_shape_2d.disabled = true

	
