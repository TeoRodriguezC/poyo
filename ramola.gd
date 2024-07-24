extends StaticBody2D
@export var velocidatsib = 5
@onready var sibb = $Sibb

func _ready():
	velocidatsib = randf_range(1,6)
	if(randi_range(0,1)):
		scale.x = -1

func _process(delta):
	position.y += velocidatsib
