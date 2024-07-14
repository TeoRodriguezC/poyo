extends Node2D
@onready var timer : Timer = $Timer
@export var semilla: PackedScene

func _ready():
	timer.timeout.connect(tirarsib)

func tirarsib():
	var nuebasib = semilla.instantiate()
	add_child(nuebasib)
	nuebasib.position = position
	nuebasib.position.x = randf_range(-290,290)

func _process(delta):
	pass
