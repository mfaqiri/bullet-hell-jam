extends CharacterBody2D

@export var speed = 400


func _physics_process(delta):
	get_input(delta)
	move_and_slide()

func get_input(delta):
	var input_dir = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized()
	velocity = input_dir * speed * delta

