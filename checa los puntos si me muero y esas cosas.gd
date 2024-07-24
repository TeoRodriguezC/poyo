extends Node

var poyo : Node2D
var alturapoyo : float
var alturagrande : int
func _ready():
	poyo = get_tree().get_first_node_in_group("poyojuegador")

func _process(delta):
	alturapoyo = poyo.position.y 
	var alturaint = int (alturapoyo / -10 )
	
	if(alturagrande < alturaint):
		alturagrande  = alturaint
		print(alturagrande)
		
