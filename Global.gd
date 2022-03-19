extends Node

var score = 0
var health = 50
var max_lives = 5
var lives = 5
var level = 1
var max_health = 50

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		var menu = get_node_or_null("/root/Game/UI/Menu") 
		if menu != null:
			var p = get_tree().paused
			if p:
				menu.hide()
				get_tree().paused = false
			else:
				menu.show()
				get_tree().paused = true

func increase_score(s):
	score += s

func decrease_health(h):
	health -= h

func decrease_lives(l):
	lives -= l
