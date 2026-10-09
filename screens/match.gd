extends Screen

func _ready() -> void:
	print("Match loaded with payload: ", payload)
	# Start a repeating log so you can verify it stops when paused
	var t := Timer.new()
	t.wait_time = 0.5
	t.autostart = true
	t.timeout.connect(func(): print("tick ", Time.get_ticks_msec()))
	add_child(t)
