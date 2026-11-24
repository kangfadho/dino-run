extends CharacterBody2D
class_name Dino

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const GRAVITY: int = 4200
const JUMP_SPEED: int = -1000

func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Jika menyentuh lantai
	if is_on_floor():
		$AnimatedSprite2D.play("run")

		# Lompat
		if Input.is_action_pressed("ui_accept"):
			velocity.y = JUMP_SPEED

		# Menunduk
		elif Input.is_action_pressed("ui_down"):
			$AnimatedSprite2D.play("duck")

	move_and_slide()
