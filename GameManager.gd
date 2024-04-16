extends Node
@onready var points_label = $"../UI/Panel/PointsLabel"

var points = 0;

func add_point():
	points +=1
	points_label.text = str(points)
