extends Area2D
@export var velocidatsib = 5
@onready var sibb = $Sibb

var roteichondibais = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	roteichondibais = randf_range(-0.2, 0.2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += velocidatsib
	sibb.rotate(roteichondibais)
	
