extends Node2D

const SPEED = 60

@onready var raycast_rightht: RayCast2D = $RaycastRightht
@onready var raycast_left: RayCast2D = $RaycastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_rightht.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x +=  direction * SPEED * delta
