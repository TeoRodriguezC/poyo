extends Node2D
@onready var timer : Timer = $Timer
@export var OCJETO: PackedScene

func _ready():
	timer.timeout.connect(tirarsib)

func tirarsib():
	var NUEBOCJETO = OCJETO.instantiate()
	add_child(NUEBOCJETO)
	NUEBOCJETO.position = position
	NUEBOCJETO.position.x = randf_range(-290,290)

func _process(delta):
	pass
