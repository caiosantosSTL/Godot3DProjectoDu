extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#func _input(event):
#	if Input.is_action_pressed("pausar"):
#		#get_tree().change_scene("res://Scenas/Pause.tscn")
#		var pp = not get_tree().paused
#		get_tree().paused = pp
#
#		get_node("Segurador").visible = pp
#
#	pass

var stop = 0
func _input(event):
	if Input.is_action_pressed("pausar"):
		if(stop == 0):
			get_tree().paused = true
			get_node("Segurador").visible = true
			stop = 1
		else:
			get_tree().paused = false
			get_node("Segurador").visible = false
			stop = 0
		
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass
