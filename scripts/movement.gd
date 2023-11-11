extends Node2D

@export var speed = 300

func _process(delta):
	var direction = Vector2()
	if Input.is_action_pressed("up"):
		direction.y = -1
	if Input.is_action_pressed("down"):
		direction.y = 1
	if Input.is_action_pressed("right"):
		direction.x = 1
	if Input.is_action_pressed("left"):
		direction.x = -1
	position += direction.normalized() * speed * delta
