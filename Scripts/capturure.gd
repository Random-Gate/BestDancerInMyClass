extends Area3D

var points
@onready var up: Area3D = $"../Up"
@onready var right: Area3D = $"../Right"
@onready var left: Area3D = $"../Left"
@onready var down: Area3D = $"../Down"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	points = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if points >= 25:
		win_sequence()

func onCorrectTiming():
	points = points + 1
	print("points: " + str(points))

func win_sequence():
	get_tree().change_scene_to_file("res://Scenes/win_screen.tscn")
