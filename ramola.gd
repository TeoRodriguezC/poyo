extends StaticBody2D
@export var velocidatsib = 5
@onready var sibb = $Sibb

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += velocidatsib
