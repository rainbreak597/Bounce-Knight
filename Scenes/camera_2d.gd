extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var rec = get_viewport_rect() 
	if rec.position.x - rec.size.x / 2 < get_node("/root/Game/Player").global_position.x:
		pass
