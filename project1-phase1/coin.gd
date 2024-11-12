extends Area2D

var screensize = Vector2.ZERO

func pickup():
	queue_free()
	
func _ready():
	$Timer.start(randf_range(3,8))

func _on_timer_timeout():
	$AnimatedSprite2D.frame = 0
	$AnimatedSprite2D.play()


func _on_area_entered(area):
	if area.is_in_group("obstacles"):
		position = Vector2(randi_range(0, screensize.x),
			randi_range(0, screensize.y))
