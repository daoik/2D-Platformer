extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_left = $RayCastLeft
@onready var sprite = $AnimatedSprite2D

@onready var ray_cast_right = $RayCastRight
# Called when the node enters the scene tree for the first time.
func _process(delta):
	position.x += direction*delta*SPEED
	if ray_cast_left.is_colliding():
		sprite.flip_h=false
		direction = 1
		
	if ray_cast_right.is_colliding():
		sprite.flip_h=true
		direction = -1
