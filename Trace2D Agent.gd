extends Node2D

var pixel = preload("res://Pixel.tscn")
var curpix

@export var ray_max_bounce = 1
@export var rays = 1
@export var ray_rotation = Vector2(1, 0)
@export var ray_reach = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	if rays == 1:
		$RayCast2D.target_position = ray_rotation * ray_reach
	calc()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	ray_rotation.x += randf_range(-1, 1)
#	ray_rotation.y += randf_range(-1, 1)
	pass

func calc():
	for i in range(-100, 100):
		ray_rotation.x = float(i) / 100
		for r in range(-100, 100):
			ray_rotation.y = float(r) / 100
			print(str(i) + ", " + str(r))
			if rays == 1:
				$RayCast2D.target_position = ray_rotation * ray_reach
			if $RayCast2D.is_colliding() == true:
				print($RayCast2D.get_collision_point())
				curpix = pixel.instantiate()
				print(curpix.position)
				curpix.position = to_local($RayCast2D.get_collision_point())
				self.add_child(curpix)
