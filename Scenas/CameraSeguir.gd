extends Camera

var distancia = 4.0
var altura = 2.0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_as_toplevel(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	#get parent pega o nodo pai deste atual
	var mira = get_parent().get_global_transform().origin
	var pos = get_global_transform().origin
	var subir = Vector3(0,1,0)
	
	var offset = pos - mira
	
	offset = offset.normalized()*distancia
	offset.y = altura
	pos = mira + offset
	
	look_at_from_position(pos, mira, subir)
	
#	print("Ver pos ",pos)
#	print("Ver offset ",offset)
#	print("Ver offsetY ",offset.y)
	
	pass
