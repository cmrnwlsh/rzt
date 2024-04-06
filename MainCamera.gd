extends Camera3D

var idx = 0

const targets = [
	Vector3(0, 0, -1), 
	Vector3(1, 0, 0),
	Vector3(0, 0, 1),
	Vector3(-1, 0, 0) 
]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		transform.basis = lerp(
			transform.basis, 
			Basis.looking_at(targets[idx], Vector3(0, 1, 0)), 
			0.08
		)

func _input(event):
	if event.is_action_pressed("rotate_left"):
		idx = (idx - 1) % 4
		
	elif event.is_action_pressed("rotate_right"):
		idx = (idx + 1) % 4
		
