extends Node


var total_coins: int = 0

func coin_collected(value: int):
	total_coins += value
	EventController.emit_signal("coin_collected", total_coins)
func level_completed():
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
