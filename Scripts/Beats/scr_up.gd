extends Area3D

@onready var capturure: Area3D = $"../Capturure"



var moveSpeed = 8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = position.x - moveSpeed * delta
	
	if overlaps_area(capturure): queue_free()
