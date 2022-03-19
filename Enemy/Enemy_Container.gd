extends Node2D

onready var Enemy_Ground = load("res://Enemy/Enemy_Ground.tscn")


func spawn(e_type, p):
	var enemy = null
	if e_type == "Enemey_Ground":
		enemy = Enemy_Ground.instance()
	enemy.position = p
	add_child(enemy)
