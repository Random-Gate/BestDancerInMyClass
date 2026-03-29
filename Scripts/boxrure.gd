extends Area3D

var moveSpeed = 0.03
@onready var capturure: Area3D = $"../Capturure"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = position.x - moveSpeed
	handle_beats()

func handle_beats():
	if overlaps_area(capturure) and Input.is_action_just_pressed("Up"):
		capturure.onCorrectTiming()
		queue_free()
	if overlaps_area(capturure) and Input.is_action_just_pressed("Right"):
		capturure.onCorrectTiming()
		queue_free()
	if overlaps_area(capturure) and Input.is_action_just_pressed("Left"):
		capturure.onCorrectTiming()
		queue_free()
	if overlaps_area(capturure) and Input.is_action_just_pressed("Down"):
		capturure.onCorrectTiming()
		queue_free()
