extends Label

var num = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("TimerT1").start()
	set_text("** "+str(num)+" **")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TimerT1_timeout():
	num-=1
	set_text("** "+str(num)+" **")
	if (num <=0 ):
		print("stop")
		get_node("SeguradorFinLud").visible = true
		get_tree().paused = true
		get_node("TimerT1").stop()
		
	pass # Replace with function body.
