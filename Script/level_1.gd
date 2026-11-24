extends Node

var speed : float = 10.0
var game_running : bool = false

@onready var dino: Dino = $Dino

func _ready() -> void:
	
	$HUD/Start_Label.show()
	
func _process(delta: float) -> void:
	if game_running:
		
		dino.position.x += speed
		$Camera2D.position.x += speed
	else:
		if Input.is_action_pressed("ui_accept"):
			game_running = true
			$HUD/Start_Label.hide()
		

## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
