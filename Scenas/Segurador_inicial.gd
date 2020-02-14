extends Position2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = true
	get_tree().paused = true
	get_node("AnimaTemat").current_animation = "TematAnim"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Buton_gogame_pressed():
	visible = false
	get_tree().paused = false
	#get_tree().change_scene("res://Scenas/CampoDenoklop.tscn")
	pass # Replace with function body.
