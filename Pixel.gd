extends ColorRect
#var end = false
#func _on_enter(area):
#	print(area)
#	if not end:
#		if area.name == "PXRN223322" and area.position == $PXRN223322.position:
#			await get_tree().create_timer(randf_range(0.01, 0.1)).timeout
#			if is_instance_valid(area):
#				if area.name == "PXRN223322" and area.position == $PXRN223322.position:
#					self.queue_free()
#			else:
#				end = true
