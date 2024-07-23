extends Camera2D
var poyo : Node2D 

# Called when the node enters the scene tree for the first time.
func _ready():
	poyo = get_tree().get_first_node_in_group("poyojuegador")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y = poyo.position.y

