extends Node3D

@onready var capturure: Area3D = $"../Capturure"
@onready var timer: Timer = $Timer

var downBeat = preload("res://Scenes/Beats/boxrureDown.tscn")
var leftBeat = preload("res://Scenes/Beats/boxrureLeft.tscn")
var rightBeat = preload("res://Scenes/Beats/boxrureRight.tscn")
var upBeat = preload("res://Scenes/Beats/boxrureUp.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	print("Time ended")
	
	var upInst = upBeat.instantiate()
	var downInst = downBeat.instantiate()
	var leftInst = leftBeat.instantiate()
	var rightInst = rightBeat.instantiate()
	
	var roll = randi_range(1, 4)
	
	if roll == 1:
		add_child(upInst)
	if roll == 2:
		add_child(downInst)
	if roll == 3:
		add_child(leftInst)
	if roll == 4:
		add_child(rightInst)
