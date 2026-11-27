extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	scale = Vector2(1.1,1.1)


func _on_mouse_exited() -> void:
	scale = Vector2(1.0,1.0)

func _on_button_down() -> void:
	scale = Vector2(1.0,0.9)

func _on_button_up() -> void:
	scale = Vector2(1.1,1.1)
