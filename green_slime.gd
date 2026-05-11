extends CharacterBody2D

var player

func _ready():
	player = get_node("/root/Game/Player")

func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 250
	move_and_slide()
