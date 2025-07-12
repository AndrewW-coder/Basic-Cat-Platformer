extends Node

var timer = 0
@onready var time: Label = $CanvasLayer/Control/time
@onready var area_2d: Area2D = $Area2D
@onready var final_time: Label = $FinalTime
var completed = false



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(!completed):
		timer += delta
		time.text = "Timer: " + str(snappedf(timer, 0.01))
	

	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		completed = true
		final_time.text = "Final Time: " + str(snappedf(timer, 0.01))
