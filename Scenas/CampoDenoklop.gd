extends Spatial

var pontus = 0

onready var o = get_node("/root/Glob")

# Called when the node enters the scene tree for the first time.
func _ready():
	#print("Gogogogot  === ",Glob.vox )
	print("Gogogogot  === ",o.vox )
	get_node("MeaHud/Label").set_text("Pontos = 0")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (pontus >= 22): #22
		get_node("Venkis/Segurador").visible = true
		get_node("AudioVenkis").play()	
		#get_node("Pause").get_tree().paused = true
		get_tree().paused = true
		
	if Input.is_action_pressed("resetar"):
		get_tree().reload_current_scene()
	pass

	


func _on_coletavel_body_entered(body):
	if "Person" in body.name:
		pontus+=1
		var pontos = str(pontus)
		get_node("MeaHud/Label").set_text("Pontos = "+ pontos)
	pass # Replace with function body.
