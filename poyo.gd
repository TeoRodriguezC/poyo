extends CharacterBody2D  #include como las librerias de ardoinio, el berdecito es un ojeto ... ctrl y le pico para documentasuiohn
@onready var popoyo = $popoyo
@onready var collision_shape_2d = $CollisionShape2D

func _physics_process(delta):
	velocity.y += 10
	if(velocity.y >= 0):
		collision_shape_2d.disabled = false
	
	if (Input.is_action_pressed("movderecha")):
		velocity.x += 10
		popoyo.flip_h = false
	if (Input.is_action_pressed("movizquierda")):
		velocity.x -= 10
		popoyo.flip_h = true

	if (move_and_slide()):
		velocity.y -= 400
		collision_shape_2d.disabled = true
