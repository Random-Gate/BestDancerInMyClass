extends Area3D

var points
#@onready var up: Area3D = $"../Up"
#@onready var right: Area3D = $"../Right"
#@onready var left: Area3D = $"../Left"
#@onready var down: Area3D = $"../Down"

#var downBeat = preload("res://Scenes/Beats/boxrureDown.tscn")
#var leftBeat = preload("res://Scenes/Beats/boxrureLeft.tscn")
#var rightBeat = preload("res://Scenes/Beats/boxrureRight.tscn")
#var upBeat = preload("res://Scenes/Beats/boxrureUp.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	points = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if points >= 25:
		win_sequence()
	

func handleBeats():
	#if overlaps_area(upBeat) and Input.is_action_just_pressed("Up"):
		#print("Touched UP Beat")
		#onCorrectTiming()
		#upBeat.queue_free()
	#if overlaps_area(downBeat) and Input.is_action_just_pressed("Down"):
		#onCorrectTiming()
		#downBeat.queue_free()
	#if overlaps_area(leftBeat) and Input.is_action_just_pressed("Left"):
		#onCorrectTiming()
		#leftBeat.queue_free()
	#if overlaps_area(rightBeat) and Input.is_action_just_pressed("Right"):
		#onCorrectTiming()
		#rightBeat.queue_free()
	pass


func onCorrectTiming():
	points = points + 1
	print("points: " + str(points))

func win_sequence():
	get_tree().change_scene_to_file("res://Scenes/ActualScenes/win_screen.tscn")
